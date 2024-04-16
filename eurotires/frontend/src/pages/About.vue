<template>
    <section class="about-section">
        <div class="heading">
            <span>about us</span>
            <h3>good quality tires</h3>
        </div>

        <div class="row">
            <div class="about-content">
                <img src="../assets/images/michelin.jpg" alt="">
                <div class="about-content-text">
                    <p>At our company, we understand the importance of having reliable tires on the road. 
                        That's why we offer a wide range of high-quality tires from repusession brands, 
                        ensuring that our customers have access to the products they need. 
                        Our prices are highly competitive, so customers can get great value for their money. 
                    </p>
                    <p>
                        Our team is made up of knowledgeable and experienced professionals who are passionate about helping our customers find the right tires for their needs. 
                        Whether customers need help selecting the right tires for their vehicle, 
                        or have questions about tire maintenance and safety, our team is always ready to assist.
                    </p>
                    <p>
                        We believe that customer satisfaction is key, which is why we prioritize it in everything we do. 
                        Our convenient online and in-store options make it easy for customers to purchase the tires they need, 
                        and our fast and efficient delivery or in-store pickup options ensure that customers get their tires quickly.
                    </p>
                    <p>
                        Finally, we believe in giving our customers peace of mind. That's why we offer a clear warranty and return policy, 
                        ensuring that our customers are protected and can feel confident in their purchase decisions.
                    </p>
                    <p>
                        With our commitment to quality products, competitive prices, expert advice, excellent customer service, 
                        and protection for our customers, 
                        we believe that our company is the best choice for anyone in need of tires.
                    </p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="about-article">
                <h3>Rolling smoothly on the road to success, one tire at a time</h3>
            </div>
        </div>

        <div class="row gallery">
            <div class="wrapper">
                <img src="../assets/images/racing.jpg" alt="">
                <img src="../assets/images/team.jpg" alt="">
                <img src="../assets/images/ram.jpg" alt="">
                <img src="../assets/images/supercar.jpg" alt=""> 
                <img src="../assets/images/tirechange.jpg" alt="">
                <img src="../assets/images/MichelinAd.jpg" alt="">
                <img src="../assets/images/supercar.jpg" alt="">
                <img src="../assets/images/nicolegallagher.jpg" alt="">
                <img src="../assets/images/pirelli.jpg" alt="">
                <img src="../assets/images/heavyduty.jpg" alt="">
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
}

.about-section .about-content {
    display: flex;
    width: 100%;

}

.about-section .about-content img {
    background-color: rgb(249, 249, 249);
}

.about-section .about-content .about-content-text {
    font-size: 16px;
    padding-left: 50px;
}

.about-section .about-article {
    margin-top: 50px;
    padding: 10px;
    text-align: center;
    background-color: #27ae60;
    width: 100%;
}

.about-section .about-article h3 {
    font-family: 'Satisfy', cursive;
    font-size: 32px;
    color: white;
}


.about-section .gallery {
    overflow: hidden;
    padding: 100px;
}

.about-section .gallery .wrapper {
    position: relative;
    flex-grow: 1;
    margin: auto;
    max-width: 1200px;
    max-height: 1200px;
    display: grid;
    grid-template-columns: repeat(8, 1fr);
    grid-template-rows: repeat(4, 1fr);
    grid-gap: 2vmin;
    justify-items: center;
    align-items: center;
}

.about-section .gallery .wrapper img {
    z-index: 1;
    grid-column: span 2;
    max-width: 100%;
    margin-bottom: -52%;
    clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
    transform: scale(1);
    transition: all .25s;
}

.about-section .gallery .wrapper img:nth-child(7n + 1) {
    grid-column: 2 / span 2;
}

.about-section .gallery .wrapper img:hover {
    z-index: 2;
    transform: scale(2);
}

@media (max-width: 768px) {
    .about-section .about-content img {
        width: 250px;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2.5);
    }
}

@media (max-width: 576px) {
    .about-section .about-content img {
        width: inherit;
    }

    .about-section .about-content {
        display: block;
    }

    .about-section .about-content .about-content-text {
        padding-left: 0px;
    }

    .about-section .gallery {
        padding: 50px 0px;
    }

    .about-section .gallery .wrapper img {
        max-width: 100%;

    }

    .about-section .gallery .wrapper {
        grid-gap: 2vmin;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2);
    }

}
</style>