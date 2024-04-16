<template>
    <div>
        <div class="home-main">
            <div class="content">
                <span>Welcome Tire Fanatics</span>
                <h3>Quality Tires from Germany ©</h3>
                <p>We guarantee quality tires and accessories for your precious car. We hope you fanatics will enjoy the experience we offer as much as we did creating it for you.</p>
                <router-link @click="scrollToTop()" to="/menu" class="btn">order now</router-link>
            </div>
            <div class="image">
                <img src="https://blogmedia.dealerfire.com/wp-content/uploads/sites/375/2015/09/Tires-A.jpg" alt="" class="home-img">
            </div>
        </div>


        <div class="home-category">
            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="https://freepngimg.com/thumb/car/3-2-car-free-download-png-thumb.png" alt="">
                <h3>Car</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="https://www.pngplay.com/wp-content/uploads/13/SUV-Transparent-PNG.png" alt="">
                <h3>SUV</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="https://www.pngarts.com/files/3/Chevy-Pickup-Truck-Transparent-Background-PNG.png" alt="">
                <h3>Truck</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="https://www.lifepng.com/wp-content/uploads/2020/11/Swift-Motorhome-png-hd.png" alt="">
                <h3>Motor-Home</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="https://pngimg.com/uploads/tractor/tractor_PNG16109.png" alt="">
                <h3>Tractor</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="https://www.freeiconspng.com/thumbs/motorcycle-png/motorcycle-png-19.png" alt="">
                <h3>Motorcycle</h3>
            </router-link>
        </div>

        <div class="home-banner">
            <div class="grid-banner row">
                <div class="grid col-md-4">
                    <img src="https://www.farm-equipment.com/ext/resources/images/webarticles/2014/Aug/9RT%20Tractor%20-%20Field.jpg" alt="">
                    <div class="content">
                        <span>special offer</span>
                        <h3>upto 50% off</h3>
                        <router-link @click="scrollToTop()" to="/menu" class="btn">order now</router-link>
                    </div>
                </div>

                <div class="grid col-md-4">
                    <img src="https://www.racshop.co.uk/advice/wp-content/uploads/2022/10/istockphoto-1394550535-612x612-1.jpg" alt="">
                    <div class="content center">
                        <span>special offer</span>
                        <h3>upto 25% extra</h3>
                        <router-link @click="scrollToTop()" to="/menu" class="btn">order now</router-link>
                    </div>
                </div>

                <div class="grid col-md-4">
                    <img src="https://img.freepik.com/premium-photo/handsome-professional-car-mechanic-changes-wheel-car-carries-out-tire-change-specialized-auto-repair-center_283617-4518.jpg" alt="">
                    <div class="content">
                        <span>limited offer</span>
                        <h3>100% cashback</h3>
                        <router-link @click="scrollToTop()" to="/menu" class="btn">order now</router-link>
                    </div>
                </div>

            </div>

        </div>

        <div class="home-about">
            <div class="image">
                <img src="https://s3.envato.com/files/323075137/66969.jpg" alt="">
            </div>
            <div class="content">
                <span>why choose us?</span>
                <h3 class="title">What makes us better than the competition?</h3>
                <p>At our company, we believe in providing only the best tire products to our customers. Our prices are highly competitive, and our team is knowledgeable and experienced. We prioritize customer satisfaction, making it easy and convenient to purchase and receive our products. And, with our clear warranty and return policy, customers can feel confident in their purchase decisions.
</p>
                <router-link @click="scrollToTop()" to="/about" class="btn">read more</router-link>

                <div class="icons-container">
                    <div class="icons">
                        <img src="../assets/images/serv-1.png" alt="">
                        <h3>fast delivery</h3>
                    </div>
                 
                    <div class="icons">
                        <img src="../assets/images/serv-3.png" alt="">
                        <h3>best quality</h3>
                    </div>
                    <div class="icons">
                        <img src="../assets/images/serv-4.png" alt="">
                        <h3>24/7 support</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "Home",

    methods: {
        scrollToTop() {
            window.scrollTo(0, 0);
        }
    }
};
</script>

<style scoped>
.home-main,
.home-about,
.home-banner,
.home-category {
    padding: 2rem 9%;
}

.home-main {
    display: flex;
    align-items: center;
    flex-wrap: wrap-reverse;
    gap: 2rem;
    position: relative;
    overflow: hidden;
}

.home-main .content {
    flex: 1 1 41rem;
}

.home-main .content span {
    font-size: 2rem;
    color: #27ae60;
}

.home-main .content h3 {
    font-size: 4rem;
    color: #130f40;
    padding-top: 1rem;
}

.home-main .content p {
    font-size: 1.4rem;
    color: #666;
    line-height: 2;
    padding: 1rem 0;
}

.home-main .image {
    flex: 1 1 41rem;
    margin: 2rem 0;
    pointer-events: none;
}

.home-main .image .home-img {
    width: 100%;
    margin-top: 5rem;
}

.home-main .home-parallax-img {
    position: absolute;
    top: -15rem;
    right: -15rem;
    width: 80vw;

}


/* home category */
.home-category {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(10rem, 1fr));
    gap: 1.5rem;
    padding-bottom: 5rem;
}

.home-category .box {
    padding: 2rem;
    text-align: center;
    border-radius: .5rem;
    background: #f7f7f7;
}

.home-category .box:hover {
    background: #27ae60;
}

.home-category .box:hover h3 {
    color: #fff;
}

.home-category .box img {
    height: 7rem;
}

.home-category .box h3 {
    font-size: 1.8rem;
    color: #130f40;
}


/* home banner */
.home-banner .row-banner {
    background: url(../assets/images/row-banner.png) no-repeat;
    height: 45rem;
    background-size: cover;
    background-position: center;
    position: relative;
}

.home-banner .row-banner .content {
    position: absolute;
    top: 50%;
    left: 7%;
    transform: translateY(-50%);
    border-radius: 5px;

}

.home-banner .row-banner .content span {
    font-family: 'Satisfy', cursive;
    font-size: 4rem;
    color: #27ae60;
    color: #130f40;
}

.home-banner .row-banner .content h3 {
    font-size: 6rem;
    color: red;
    text-transform: uppercase;
}

.home-banner .row-banner .content p {
    font-size: 2rem;
    padding-bottom: 1rem;
}


.home-banner .grid-banner .grid {
    border-radius: 1rem;
    overflow: hidden;
    height: 45rem;
}

.home-banner .grid-banner .grid:hover img {
    transform: scale(1.2);
}

.home-banner .grid-banner .grid img {
    height: 100%;
    width: 100%;
    object-fit: cover;
}

.home-banner .grid-banner .grid .content {
    position: absolute;
    top: 2rem;
    padding: 0 2rem;
}

.home-banner .grid-banner .grid .content.center {
    text-align: center;
    width: 100%;
}

.home-banner .grid-banner .grid .content.center span {
    color: #130f40;
}

.home-banner .grid-banner .grid .content.center h3 {
    color: #130f40;
}

.home-banner .grid-banner .grid .content span {
    font-size: 2.5rem;
    color: #fff;
}

.home-banner .grid-banner .grid .content h3 {
    font-size: 3rem;
    color: #fff;
    padding-top: .5rem;
    
}

.home-about {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 2rem;
    background: #f7f7f7;
}

.home-about .image {
    flex: 1 1 40rem;
}

.home-about .image img {
    width: 100%;
}

.home-about .content {

    flex: 1 1 40rem;
}

.home-about .content span {
    font-family: 'Satisfy', cursive;
    font-size: 3rem;
    color: #27ae60;
}

.home-about .content .title {
    font-size: 3rem;
    padding-top: .5rem;
    color: #130f40;
}

.home-about .content p {
    padding: 1rem 0;
    line-height: 2;
    font-size: 1.4rem;
    color: #666;
}

.home-about .content .icons-container {
    margin-top: 2rem;
    display: flex;
    flex-wrap: wrap;
    gap: 1.5rem;
}

.home-about .content .icons-container .icons {
    flex: 1 1 20rem;
    border-radius: .5rem;
    background: #fff;
    box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: center;
    gap: 2rem;
    padding: 2rem;
}

.home-about .content .icons-container .icons h3 {
    font-size: 1.7rem;
    color: #130f40;
}

@media (max-width: 768px) {
    #menu-btn {
        display: inline-block;
    }

    .home-main .home-parallax-img {
        top: 0;
        right: 0;
        width: 100%;
    }

    .home-banner .grid-banner .content h3 {
        font-size: 15px !important;
    }

    .home-banner .grid-banner .content.center {
        padding-left: 0px !important;
    }

}

@media (max-width: 576px) {
    .home-main .content h3 {
        font-size: 3rem;
    }

    .home-main .content p {
        font-size: 1.5rem;
    }
}
</style>




