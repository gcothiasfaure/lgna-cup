import { createRouter, createWebHistory } from '@ionic/vue-router';
import store from '../store';

const routes = [
  {
    path: '/',
    redirect: '/login'
  },
  {
    path: '/login',
    component: () => import('@/views/Login.vue')
  },
  {
    path: '/home/',
    component: () => import('@/views/Home.vue'),
    children: [
      {
        path: '',
        redirect: '/home/bets',
      },
      {
        path: 'bets',
        component: () => import('@/views/Bets.vue'),
        meta: {requiresAuth: true}
      },
      {
        path: 'ranking',
        component: () => import('@/views/Ranking.vue'),
        meta: {requiresAuth: true}
      }
    ]
  },
  { 
    path: "/:catchAll(.*)",
    component: () => import('@/views/PageNotFound.vue'),
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

router.beforeEach((to, from, next) => {
  if(to.matched.some(record => record.meta.requiresAuth)) {
    if (store.getters.isAuthenticated) {
      next()
      return
    }
    next('/login')
  } else {
    next()
  }
})

export default router
