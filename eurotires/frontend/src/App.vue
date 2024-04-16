<template>
    <div id="app">
        <div v-if="admin">
            <router-view></router-view>
        </div>
        <div v-else>
            <NavBar />

            <div class="auth-wrapper">
                <div class="auth-inner">
                    <router-view></router-view>
                </div>
            </div>
            <FooterComponent />
        </div>
    </div>
</template>

<script>
import NavBar from './components/NavBar.vue';
import FooterComponent from './components/FooterComponent.vue';
import { mapActions } from 'vuex';
import { mapState } from 'vuex';
export default {
    name: 'App',
    components: {
        NavBar,
        FooterComponent
    },

    created() {
        this.gettiresData()
    },

    computed: {
        ...mapState(["admin"])
    },

    methods: {
        ...mapActions(["gettiresData"])
    }
}
</script>

<style>
@import "./assets/css/global_style.css";
</style>

