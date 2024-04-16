import {createStore} from "vuex"
import axios from "axios"

const store = createStore({
    state() {
        return {
            alltires: [],
            user: undefined,
            admin: undefined,
        }
    },
    mutations: {
        settiresData(state, payload){
            state.alltires = payload;
        },
        setUser(state, payload){
            state.user = payload;
        },
        setAdmin(state, payload){
            state.admin = payload;
        }
    },
    actions: {
        async gettiresData(context){
            await axios.get('/tires')
            .then(function (response) {
                context.commit("settiresData", response.data);
            })
            .catch(function (error) {
                console.log(error);
            });
        },
    }
})

export default store;