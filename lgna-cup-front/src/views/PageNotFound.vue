<template>
  <ion-page>
    <ion-content>
        <div class="container">
            <div class="iconContainer">
                <img src="https://lgna-cup.netlify.app/assets/icon.png" alt="lgna-cup-icon" width="300">
            </div>
            <div class="maintenance">
                <h2>Error 404 - Page not found.</h2>
            </div>
        </div>
    </ion-content>
  </ion-page>
</template>

<script lang="js">
import { IonPage, IonContent} from '@ionic/vue';
export default  {
  name: 'Login',
  components: {IonContent, IonPage}
}
</script>

<style scoped>
.container {
    position: absolute;
    left: 0;
    right: 0;
    top: 50%;
    transform: translateY(-50%);
    margin: 0 auto 0 auto;
    display: flex;
    flex-direction: column;
}
.maintenance{
    text-align: center;
    margin-top: 40px;
}
.iconContainer{
    display: flex;
    justify-content: center;
}
</style>