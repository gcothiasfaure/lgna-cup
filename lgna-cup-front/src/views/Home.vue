<template>
  <ion-page>
    <ion-tabs>
      <ion-tab-bar class="ionTabBar" slot="bottom">

        <ion-tab-button class="tabBtn" tab="bets" href="/home/bets">
          <ion-icon :icon="pencil" />
          <ion-label>Paris</ion-label>
        </ion-tab-button>
          
        <ion-tab-button class="tabBtn" tab="ranking" href="/home/ranking">
          <ion-icon :icon="podium" />
          <ion-label>Classement</ion-label>
        </ion-tab-button>

      </ion-tab-bar>
    </ion-tabs>
  </ion-page>
</template>

<script lang="js">
import { IonTabBar, IonTabButton, IonTabs, IonLabel, IonIcon, IonPage } from '@ionic/vue';
import { podium, pencil } from 'ionicons/icons';

export default {
  name: 'Home',
  components: { IonLabel, IonTabs, IonTabBar, IonTabButton, IonIcon, IonPage },
  setup() {
    return {
      podium, 
      pencil
    }
  }
}
</script>

<style scoped>
.ionTabBar{
  --background:white;
}
.tabBtn{
  --color-selected:black;
}
</style>