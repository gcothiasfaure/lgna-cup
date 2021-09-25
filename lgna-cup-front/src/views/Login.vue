<template>
  <ion-page>
    <ion-content>
      <div class="container">
        <div class="iconContainer">
          <div class="icon">
            <img src="assets/icon.png" alt="lgna-cup-icon">
          </div>
        </div>
        
        <form @submit.prevent="submit">
          <p class="abstract">Entrez vos identifiant de connexion :</p>
          <input class="inputText firstInput" type="text" placeholder="Nom" maxlength="20" v-model="playername" required>
          <input class="inputText" type="password" placeholder="Mot de passe" maxlength="20" v-model="password" required>
          <input type="submit" class="submit-enter"/>
          <ion-button class="submitBtn" type="submit" expand="block" :disabled="(playername == '' || password == '') || loading" ><ion-spinner v-if="loading" class="center"></ion-spinner><span v-else>Connexion</span></ion-button>
        </form>
      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="js">
import { IonPage, IonContent,IonButton,toastController,IonSpinner} from '@ionic/vue';
import axios from 'axios';

export default  {
  name: 'Login',
  components: {IonContent, IonPage,IonButton,IonSpinner},
  data() {
    return {
      playername: "",
      password:"",
      loading:false
    };
  },
  mounted(){
    if (localStorage.playername) {
      this.playername = localStorage.playername;
    }
    if (localStorage.password) {
      this.password = localStorage.password;
    }
  },
  methods:{
    async openToast(msg) {
      const toast = await toastController
        .create({
          message: msg,
          duration: 4000,
          position: 'top',
          color:"danger"
        })
      return toast.present();
    },
    submit(){
      this.loading=true;
      axios.post("/login",{},{auth : {
        username: this.playername,
        password: this.password
      }})
      .then(response => {
        if (response.data.status == "ko") {
          if (response.data.code == "NO_PLAYER_WITH_THIS_NAME") {
            this.openToast("Votre nom ne fait pas partie des noms des joueurs de la <b>lgna cup</b>.");
            this.playername="";
            this.password="";
            this.loading=false;
            return;
          }
          else{
            this.openToast("Votre mot de passe est invalide.");
            this.password="";
            this.loading=false;
            return;
          }
        }
        this.$store.dispatch("logIn",response.data).then(() => {
          localStorage.playername = this.playername;
          localStorage.password = this.password;
          if(this.$route.redirectedFrom && this.$route.redirectedFrom.fullPath!="/"){
            this.$router.push(this.$route.redirectedFrom.fullPath)
          }
          else {
            this.$router.push("/home")
          }
          setTimeout(() => {
            this.loading=false;
          }, 2000);
        });
      })
      .catch(() => {
        this.openToast("Une erreur s'est produite, veuillez réessayer dans quelques minutes. Si le problème persiste, contactez la maintenance.");
        this.playername="";
        this.password="";
        this.loading=false;
      })
    }
  }
}
</script>

<style scoped>
input:focus{
  outline: none;
}
.submit-enter {
  position: absolute;
  visibility: hidden;
  left: -1000px;
}
.container {
  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  max-width: 300px;
  margin: 0 auto 0 auto;
}

.abstract{
  color: #6f6e74;
  margin: 0;
}

.iconContainer {
    display: flex;
    justify-content: center;
    margin-bottom: 50px;
}

.icon {
    display: flex;
    flex-direction: column;
}

.inputText{
  margin: 10px 0 0 0;
  border: 1px black solid;
  border-radius: 0.4rem;
  overflow: hidden;
  width: 100%;
  padding: 8px;
}

.submitBtn{
  margin: 10px 0 0 0 !important;
  --border-radius: .4rem;
}
</style>