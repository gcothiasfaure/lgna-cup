<template>
  <div class="container">
    <div class="header">
      <div class="dateStyle">
        {{parseDate(matchInfo.utcDate)}}
      </div>
    </div>
    <div class="content">
      <div class="presentation">
        <div class="teamPresentation homeTeamPresentation">
          <div class="bigTeamName bigAwayTeamName">
            {{format(matchInfo.homeTeam.name)}}
          </div>
          <div class="homeTeamFlagContainer">
            <img :src="matchInfo.homeTeam.flag"/>
          </div>
        </div>
        <div class="dateStyle contestantsSeparator">
          {{parseTime(matchInfo.utcDate)}}
        </div>
        <div class="teamPresentation">
          <div class="awayTeamFlagContainer">
            <img :src="matchInfo.awayTeam.flag"/>
          </div>
          <div class="bigTeamName">
            {{matchInfo.awayTeam.name}}
          </div>
        </div>
      </div>
      <div class="boxContainer">
          <div @click="clickOnBet('HOME_TEAM')" :class="[{checked : bet == 'HOME_TEAM'},{betBox3 : matchInfo.drawPossible},{betBox2 : !matchInfo.drawPossible}]" class="betBox">
            <p class="oddTeamName">{{format(matchInfo.homeTeam.name)}}</p>
            <p class="odd">{{matchInfo.odds[0]}}</p>
          </div>
          <div v-if="matchInfo.drawPossible" @click="clickOnBet('DRAW')" :class="{checked : bet == 'DRAW' }" class="betBox">
            <p class="oddTeamName">Nul</p>
            <p class="odd">{{matchInfo.odds[1]}}</p>
          </div>
          <div @click="clickOnBet('AWAY_TEAM')" :class="[{checked : bet == 'AWAY_TEAM'},{betBox3 : matchInfo.drawPossible},{betBox2 : !matchInfo.drawPossible}]" class="betBox">
            <p class="oddTeamName">{{matchInfo.awayTeam.name}}</p>
            <p class="odd">{{matchInfo.odds[2]}}</p>
          </div>
      </div>
    </div>
  </div>
</template>

<script lang="js">
import {closeCircleOutline} from 'ionicons/icons';

export default {
  name: 'MatchBet',
  data(){
    return{
      bet:null,
      loading:true
    }
  },
  setup(){
    return{
      closeCircleOutline
    }
  },
  mounted(){
    if (this.matchInfo.playerBet) {
      this.$store.commit('SET_BET', {matchId:this.matchInfo.id,bet:this.matchInfo.playerBet});
      this.bet = this.matchInfo.playerBet;
    }
  },
  computed:{
    awayTeamselect(){
      return this.bet == "AWAY_TEAM"
    }
  },
  methods:{
    clickOnBet(bet){
      if (this.bet == bet) {
        this.cancelBet();
      }
      else{
        this.bet = bet
        this.registerBet()
      }
    },
    format(value){
      if (value== "République Tchèque") {
        return "Rép. Tchèque"
      }
      else{
        return value
      }
    },
    parseTime(value) {
      const date = new Date(Date.parse(value));
      return date.getHours()+":"+(date.getMinutes()<10?'0':'') + date.getMinutes()
    },
    parseDate(value) {
      const date = new Date(Date.parse(value));
      const day = date.toLocaleString('fr-FR', {  weekday: 'long' })
      return day.charAt(0).toUpperCase() + day.slice(1) +" "+ date.getDate() +" "+ date.toLocaleString('fr-FR', {  month: 'long' }) +" "+date.getFullYear()
    },
    cancelBet(){
      this.bet=null
      this.$store.commit('DEL_BET', {matchId:this.matchInfo.id})
    },
    registerBet(){
      this.$store.commit('SET_BET', {matchId:this.matchInfo.id,bet:this.bet})
    },
  },
  props:{
    matchInfo:{}
  }
}
</script>

<style scoped>
.bigAwayTeamName{
      text-align: end;
}
.awayTeamFlagContainer{
  margin-right: 5px;
  min-width: fit-content;
}
.homeTeamFlagContainer{
  margin-left: 5px;
  min-width: fit-content;
}
.contestantsSeparator{
  margin:0 10px;
  width: 15%;
  text-align: center;
}
.header{
  margin-bottom: 10px;
}
.betBox:not(:last-child){
  margin-right: 7px;
}
.betBox2{
  width: 50%;
}
.betBox3{
  width: 36%;
}
.betBox{
  cursor:pointer;
  padding: 5px;
  border-radius: .4rem;
  background-color: rgb(212, 203, 203);
  text-align: center;
}
.checked{
  color: white;
  background-color: #0046af !important;
}
.container{
  position: relative;
}
.presentation{
  display: flex;
  align-items: center;
  justify-content: center;
}
.teamPresentation{
  display: flex;
  align-items: center;
  width: 40%;
}
.homeTeamPresentation{
  justify-content: flex-end;
}
img {
  object-fit: cover;
  border-radius:50%;
  width: 25px;
  height: 25px;
  filter: brightness(0.9);
}
.boxContainer{
  display: flex;
  justify-content: space-between;
}
.oddTeamName{
  font-size: 11px;
  margin: 0 0 3px 0;
}
.odd{
  margin: 0;
}
.dateStyle{
  color: #666;
  font-weight: 600;
  font-size: 0.9rem;
}
.bigTeamName{
  font-size: 1rem;
  font-weight: 700;
}
.presentation{
  margin-bottom: 10px;
}
</style>