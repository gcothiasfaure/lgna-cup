<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-title>Paris</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content class="bc">
      <ion-spinner v-if="loading" class="center"></ion-spinner>
      <div v-else class="content">
        <!-- eslint-disable -->
        <template v-for="match in matches" :key="match.id">
          <MatchBet :matchInfo="match" class="matchBet"/>
        </template>
        <ion-button class="submitBtn" type="submit" expand="block" @click="submit()" :disabled="!$store.getters.isBetsEmpty || loadingAPI"><ion-spinner v-if="loadingAPI" class="center"></ion-spinner><span v-else>Soumettre</span></ion-button>
      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="js">
import { IonPage, IonContent,IonButton,toastController,IonSpinner,IonHeader,IonToolbar,IonTitle} from '@ionic/vue';
import MatchBet from '@/components/MatchBet'
import axios from 'axios';

export default  {
  name: 'Bets',
  components: {IonContent,IonPage,MatchBet,IonButton,IonSpinner,IonHeader,IonToolbar,IonTitle},
  data() {
    return {
      matches:[],
      loading:true,
      loadingAPI:false
    }
  },
  methods:{
    submit(){
      const body = {bets:this.$store.getters.getBets}
      this.loadingAPI=true;
      axios({
        url: '/bets',
        method:"post",
        data:body,
        headers: {
          "x-access-tokens":this.$store.getters.getToken
        }
      })
      .then(response => {
        if (response.data.status == "ok") {
          this.toast("success","Vos paris ont bien été pris en compte");
          setTimeout(() => {
            this.loadingAPI=false;
          }, 500);
          
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
        this.toast("danger","Une erreur s'est produite, veuillez réessayer dans quelques minutes. Si le problème persiste, contactez la maintenance.");
      })
    },
    async toast(code,msg) {
      const toast = await toastController
        .create({
          message: msg,
          duration: 4000,
          position: 'top',
          color:code,
          cssClass:"toast"
        })
      return toast.present();
    },
  },
  created() {
    axios({
      url: '/matches',
      headers: {
        "x-access-tokens":this.$store.getters.getToken
      }
    })
    .then(response => {
      if (response.data.status == "ok") {
        this.matches = response.data.matches
        this.$nextTick(function () {
          this.loading=false;
        })
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
      this.toast("danger","Une erreur s'est produite, veuillez réessayer dans quelques minutes. Si le problème persiste, contactez la maintenance.");
    })
  }
}
</script>

<style scoped>
.header {
  position: fixed;
  top: 0;
  width: 100%;
  background-color: silver;
}
.matchBet{
  margin: 10px auto 10px auto;
  max-width:600px;
  border-radius: .4rem;
  padding: 10px;
  background-color: white;
}
@media screen and (max-width: 550px){
  .matchBet{
    margin: 10px;
    max-width:500px;
  }
}
.submitBtn{
  max-width: 300px;
  margin: 10px auto 10px auto;
  --border-radius: .4rem;
}
.center{
  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  left:50%;
  transform: translateX(-50%) translateY(-50%);
}
.bc{
    --background: #E8E9EB;
}
</style>

<style>
.toast{
  transform: translateY(40px) !important;
}
</style>