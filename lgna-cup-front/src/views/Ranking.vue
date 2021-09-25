<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-title>Classement</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content class="bc">
      <ion-spinner v-if="loading" class="center"></ion-spinner>
      <div v-else>
        <div class="timeContainer">
          <p class="timeLabel">Dernière mise à jour du classement :</p>
          <p class="timeStyle" v-if="lastScoreCalculationTime">{{formatDate(lastScoreCalculationTime)}}</p>
        </div>
        <div class="tableContainer">
          <table>
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th class="pointsCol">pts.</th>
                </tr>
            </thead>
            <tbody>
              <!-- eslint-disable -->
              <template v-for="(player,index) in rank" :key="index">
                <tr class="borderBottom" :class="{ me : playername == player.name }">
                    <td class="col1">{{index+1}}</td>
                    <td class="col2">{{player.name}} <span v-if="playername == player.name">(moi)</span></td>
                    <td class="col3">{{player.score}}</td>
                </tr>
              </template>
            </tbody>
          </table>
        </div>
      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="js">
import { IonPage, IonContent,IonSpinner,IonHeader,IonToolbar,IonTitle,toastController} from '@ionic/vue';

import axios from 'axios'
export default  {
  name: 'Ranking',
  components: {IonContent, IonPage,IonSpinner,IonHeader,IonToolbar,IonTitle},
  data(){
    return {
      rank:[],
      loading:true,
      lastScoreCalculationTime:null
    }
  },
  computed:{
    playername(){
      return this.$store.getters.getPlayername;
    }
  },
  methods:{
    formatDate(value){
      const date = new Date(value);
      const day = date.toLocaleString('fr-FR', {  weekday: 'long' })
      return day.charAt(0).toUpperCase() + day.slice(1) +" "+ date.getDate() +" "+ date.toLocaleString('fr-FR', {  month: 'long' }) +" "+date.getFullYear() + " à "+date.getHours()+"h"+(date.getMinutes()<10?'0':'') + date.getMinutes()
    },
    async openToast(msg) {
      const toast = await toastController
        .create({
          message: msg,
          duration: 4000,
          position: 'top',
          color:"danger"
        })
      return toast.present();
    }
  },
  created() {
    axios({
      url:"/ranking",
      headers: {
          "x-access-tokens":this.$store.getters.getToken
      }
    })
    .then(response => {
      if (response.data.status == "ok") {
        this.rank = response.data.ranking;
        this.lastScoreCalculationTime = response.data.lastScoreCalculationTime;
        this.$nextTick(function () {
          this.loading=false;
        });
      }
      else{
        if (response.data.code == "TOKEN_EXPIRED") {
            this.toast("danger","Votre session a expiré, vous devez vous reconnecter.");
            setTimeout(() => {
              this.$router.go();
            }, 3000);
          }
      }
    })
    .catch(() => {
      this.openToast("Une erreur s'est produite, veuillez réessayer dans quelques minutes. Si le problème persiste, contactez la maintenance.");
    })
  }
}
</script>

<style scoped>
.timeStyle{
  font-weight: 600;
  margin: 0;
}
@media screen and (max-width: 550px){
  td.col2{
    padding-right: 30px !important;
    white-space: nowrap;
  }
  table{
    margin: 0;
    width: 100%;
  }
  .tableContainer{
    padding: 0 0 10px 0 !important;
  }
}
.tableContainer{
  background-color: white;
  border-radius: .4rem;
  padding: 5px;
}
.center{
  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  left:50%;
  transform: translateX(-50%) translateY(-50%);
}
table{
  margin: 0 auto;
}
th{
  font-size: 12px;
}
tr{
  border-bottom: 2px solid black;
}
table td,table th {
  padding-top: 15px;
  padding-bottom: 15px;
}
td.col1{
  padding-left: 30px;
  padding-right: 10px;
  color: grey;
  font-size: 12px;
  padding-top:17px ;
}
td.col3{
  padding-left: 20px;
  padding-right: 30px;
  font-weight: 700;
}
td.col2{
  padding-right: 40vw;
}
.pointsCol{
  padding-right: 15px;
}
.bc{
    --background: #E8E9EB;
}
.timeLabel{
  margin: 0;
  font-size: small;
}
.timeContainer{
  background-color: white;
  border-radius: .4rem;
  padding: 5px 5px 5px 15px;
  margin: 10px 0;
}
</style>