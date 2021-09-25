import { createStore } from "vuex";

export default createStore({
    state() {
        return {
            playername: null,
            token: null,
            bets:[]
        };
    },
    getters:{
        getPlayername(state) {
            return state.playername;
        },
        getToken(state) {
            return state.token;
        },
        isAuthenticated(state){
            return !!state.playername;
        },
        getBets(state){
            return state.bets;
        },
        isBetsEmpty(state){
            return !!state.bets.length;
        }
    },
    mutations: {
        SET_PLAYER_NAME(state, payload) {
            state.playername = payload.name
            state.token = payload.token
        },
        SET_BET(state, payload) {
            if (state.bets.filter(elem => elem.matchId == payload.matchId).length>0){
                // already a bet for this game
                state.bets.forEach(bet => {
                    if (bet.matchId == payload.matchId) {
                        bet.bet = payload.bet
                    }
                });
            }
            else{
                // no bet for this game yet
                state.bets.push(payload)
            }
        },
        DEL_BET(state, payload) {
            state.bets = state.bets.filter(elem => elem.matchId != payload.matchId)
        }
    },
    actions:{
        logIn({ commit }, payload) {
            commit("SET_PLAYER_NAME", payload);
        },
        setBet({ commit }, payload) {
            commit("SET_BET", payload);
        },
        delBet({ commit }, payload) {
            commit("DEL_BET", payload);
        }
    }
});