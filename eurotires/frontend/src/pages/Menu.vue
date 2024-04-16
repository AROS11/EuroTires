<template>
    <div class="menu-section">
        <div class="heading">
            <span>Catalog</span>
            <h3>Only The Best From Our Partners</h3>
        </div>

        <div class="row">
            <div class="col-sm-4 col-12 filter-box">
                <div class="row search-box">
                    <input type="text" class="search-input" v-model="tireObj.name" placeholder="Search.." />
                </div>

                <div class="row filter-drop-down">
                    <p @click="displayFilterDrop">Filter<span v-if="showDropDown">x</span><span v-else>v</span></p>
                </div>

                <div class="row filter-heading">
                    <h1>Status</h1>
                </div>

                <div class="row filter-section">
                    <ul class="filter-option">
                        <li>
                            <input type="button" name="cbStatus" id="bsStatus" value="Best Seller" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="bsStatus" class="d-flex justify-content-between">Best Seller
                                <button class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Best Seller">X</button></label>
                        </li>


                        <li>
                            <input type="button" name="cbStatus" id="ooStatus" value="Online Only" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="ooStatus" class="d-flex justify-content-between">Online Only <button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Online Only">X</button></label>
                        </li>


                        <li>
                            <input type="button" name="cbStatus" id="soStatus" value="Sale Off" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="soStatus" class="d-flex justify-content-between">Sale Off <button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Sale Off">X</button></label>
                        </li>


                        <li>
                            <input type="button" name="cbStatus" id="sdStatus" value="Seasonal package" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="sdStatus" class="d-flex justify-content-between">Seasonal package <button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Seasonal package">X</button></label>
                        </li>


                        <li>
                            <input type="button" name="cbStatus" id="ndStatus" value="New package" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="ndStatus" class="d-flex justify-content-between">New package <button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="New package">X</button></label>
                        </li>

                    </ul>
                    <hr />
                </div>

                <div class="row filter-heading">
                    <h1>Price</h1>
                </div>

                <div class="row filter-section">
                    <ul class="filter-option">
                        <li>
                            <input type="button" name="rPrice" id="rtfPrice" value="2,50" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="rtfPrice" class="d-flex justify-content-between">$2 - $50 <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="rftPrice" value="51,150" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="rftPrice" class="d-flex justify-content-between">$51 - $150 <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="rttPrice" value="151,1000" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="rttPrice" class="d-flex justify-content-between">$151 - $1000 <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="mtPrice" value="12" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="mtPrice" class="d-flex justify-content-between">{{ ">" }} $12 <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="ltPrice" value="2" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="ltPrice" class="d-flex justify-content-between">{{ "<" }} $2 <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                    </ul>
                    <hr />
                </div>


                <div class="row filter-heading">
                    <h1>Type</h1>
                </div>

                <div class="row filter-section">
                    <ul class="filter-option">
                        <li>
                            <input type="button" name="rType" id="mType" value="tire" hidden
                                @click="filterTypeBtn($event)" />
                            <label for="mType" class="d-flex justify-content-between">tires<button class="unselect-btn"
                                    @click="unselectTypeBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rType" id="vType" value="battery" hidden
                                @click="filterTypeBtn($event)" />
                            <label for="vType" class="d-flex justify-content-between">batteries<button class="unselect-btn"
                                    @click="unselectTypeBtn($event)">X</button></label>
                        </li>

                    </ul>
                </div>
            </div>

            <div class="col-sm-8">
                <div class="row">
                    <div class="menu-tabs">
                        <input type="button" id="allFiltertireBtn" name="allFiltertireBtn" value="all"
                            class="menu-tab-item" @click="filtertireBtn($event)" />
                        <input type="button" id="carFiltertireBtn" name="carFiltertireBtn" class="menu-tab-item"
                            value="car" @click="filtertireBtn($event)" />
                        <input type="button" id="TruckFiltertireBtn" name="TruckFiltertireBtn" class="menu-tab-item"
                            value="Truck" @click="filtertireBtn($event)" />
                        <input type="button" id="Motor-HomeFiltertireBtn" name="Motor-HomeFiltertireBtn" class="menu-tab-item"
                            value="Motor-Home" @click="filtertireBtn($event)" />
                        <input type="button" id="TractorFiltertireBtn" name="TractorFiltertireBtn" class="menu-tab-item"
                            value="Tractor" @click="filtertireBtn($event)" />
                        <input type="button" id="MotorcycleFiltertireBtn" name="MotorcycleFiltertireBtn" class="menu-tab-item"
                            value="Motorcycle" @click="filtertireBtn($event)" />
                        <input type="button" id="BatteriesFiltertireBtn" name="BatteriesFiltertireBtn" class="menu-tab-item"
                            value="Batteries" @click="filtertireBtn($event)" />
                    </div>
                </div>

                <div class="row box-container">
                    <div v-for="(f, index) in currentPageItems" :key="index">
                        <div class="box">
                            <a href="" class="fas fa-heart"></a>
                            <div class="image">
                                <img :src="require(`../assets/images/${f.tire_src}`)" alt="" />
                            </div>
                            <div class="content">
                                <h3>{{ f.tire_name }}</h3>
                                <div class="stars">
                                    <div v-for="s in Math.floor(parseFloat(f.tire_star))" :key="s" class="d-inline">
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <div v-if="parseFloat(f.tire_star) - Math.floor(parseFloat(f.tire_star)) == 0.5"
                                        class="d-inline">
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <span> ({{ f.tire_vote }}) </span>
                                </div>
                                <div class="desc">
                                    <p>{{ f.tire_desc }}</p>
                                </div>
                                <div class="price">
                                    ${{ parseFloat(f.tire_price) - parseFloat(f.tire_discount) }}
                                    <span v-if="parseFloat(f.tire_discount) != 0.00">${{ parseFloat(f.tire_price)
                                    }}</span>
                                </div>
                                <button class="btn" @click="addItem(index)">Add to cart</button>
                            </div>
                        </div>
                    </div>
                    <div v-if="!filtertires.length">
                        <div class="box">
                            <div class="content">
                                <h1 style="color: #057835fa;">No match found!</h1>
                            </div>
                            <div class="image">
                                <h1>NOT FOUND</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div v-if="calculatePages > 1" class="action-row">

                    <button v-if="pageNum != 0" @click="previous()" class="action-btn"> {{ "<" }} </button>
                            <div v-for="(p, i) in calculatePages" :key="i" class="d-inline">
                                <span v-if="i == pageNum" class="highlight" @click="set(i)">{{ i + 1 }}</span>
                                <span v-else @click="set(i)">{{ i + 1 }}</span>
                            </div>
                            <button v-if="pageNum != calculatePages - 1" @click="next()" class="action-btn"> {{ ">" }}
                            </button>
                </div>
            </div>
        </div>

        <QuickView v-if="showQuickView" :tire="sendId">
            <button class="btn" @click="closeView">X</button>
        </QuickView>
    </div>
</template>

<script>
import QuickView from "@/components/QuickView.vue";
import { mapState } from "vuex";
export default {
    name: "Menu",

    data() {
        return {
            tireObj: { name: "", category: "", status: [], price: "", type: "" },

            showQuickView: false,
            showDropDown: false,
            sendId: null,

            perPage: 6,
            pageNum: 0,
            previousCategoryClicked: "",
            previousPriceClicked: "",
            previousTypeClicked: "",
        };
    },

    computed: {
        ...mapState(["alltires"]),

        filtertires: function () {
            return this.alltires.filter((f) => f.tire_name.toLowerCase().match(this.tireObj.name.toLowerCase()) &&
                (f.tire_category.match(this.tireObj.category) || this.tireObj.category == "all" || this.tireObj.category == "") &&
                (this.evaluatePrice(f, this.tireObj.price)) &&
                f.tire_type.toLowerCase().match(this.tireObj.type.toLowerCase()) &&
                (this.evaluateStatus(f, this.tireObj.status)));
        },
        currentPageItems: function () {
            return this.filtertires.slice(this.pageNum * this.perPage, this.pageNum * this.perPage + this.perPage);
        },
        calculatePages: function () {
            if (this.filtertires.length % this.perPage != 0) {
                return Math.floor((this.filtertires.length) / this.perPage) + 1;
            }
            else {
                return this.filtertires.length / this.perPage;
            }
        }
    },
    methods: {
        set(val) {
            this.pageNum = val;
        },
        next() {
            this.pageNum++;
        },
        previous() {
            this.pageNum--;
        },
        checkSale: function (tire, statusArray) {
            if (statusArray.includes("Sale Off")) {
                if (parseFloat(tire.tire_discount) > 0) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkBest: function (tire, statusArray) {
            if (statusArray.includes("Best Seller")) {
                if (tire.tire_status.includes("best seller")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkOnl: function (tire, statusArray) {
            if (statusArray.includes("Online Only")) {
                if (tire.tire_status.includes("online only")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkSeason: function (tire, statusArray) {
            if (statusArray.includes("Seasonal package")) {
                if (tire.tire_status.includes("seasonal package")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkNew: function (tire, statusArray) {
            if (statusArray.includes("New package")) {
                if (tire.tire_status.includes("new package")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        evaluateStatus: function (tire, statusArray) {
            this.pageNum = 0;
            if (statusArray.length != 0) {
                if (this.checkSale(tire, statusArray) && this.checkBest(tire, statusArray) && this.checkNew(tire, statusArray) && this.checkSeason(tire, statusArray) && this.checkOnl(tire, statusArray)) {
                    return tire;
                }
            }
            else {
                return tire;
            }
        },
        evaluatePrice: function (tire, priceRange) {
            this.pageNum = 0;
            var cal = parseFloat(tire.tire_price) - parseFloat(tire.tire_discount);
            if (priceRange == "2,50") {
                if (2 <= cal && cal <= 50) {
                    return tire;
                }
            }
            else if (priceRange == "51,150") {
                if (51 <= cal && cal <= 150) {
                    return tire;
                }
            }
            else if (priceRange == "151,1000") {
                if (151 <= cal && cal <= 1000) {
                    return tire;
                }
            }
            else if (priceRange == "2") {
                if (cal <= 2) {
                    return tire;
                }
            }
            else if (priceRange == "12") {
                if (cal >= 12) {
                    return tire;
                }
            }
            else if (priceRange == "") {
                return tire;
            }
        },
        filtertireBtn: function (e) {
            this.pageNum = 0;
            if (this.tireObj.category != e.target.value && this.previousCategoryClicked != "") {
                this.previousCategoryClicked.target.style.background = "#27ae60";
            }
            this.tireObj.category = e.target.value;
            this.previousCategoryClicked = e;
            e.target.style.background = "#057835fa";
        },
        filterStatusBtn: function (e) {
            this.pageNum = 0;
            if (this.tireObj.status.includes(e.target.value) == false) {
                this.tireObj.status.push(e.target.value);
                document.querySelector(`[for=${e.target.id}]`).style.background = "#057835fa";
                document.querySelector(`[for=${e.target.id}]`).style.color = "white";
                document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            }
        },
        filterPriceBtn: function (e) {
            this.pageNum = 0;
            this.tireObj.price = "";
            this.tireObj.price += e.target.value;
            document.querySelector(`[for=${e.target.id}]`).style.background = "#057835fa";
            document.querySelector(`[for=${e.target.id}]`).style.color = "white";
            document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            if (this.previousPriceClicked != "") {
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.background = "inherit";
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.color = "inherit";
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            }
            this.previousPriceClicked = e;
        },
        filterTypeBtn: function (e) {
            this.pageNum = 0;
            this.tireObj.type = "";
            this.tireObj.type += e.target.value;
            document.querySelector(`[for=${e.target.id}]`).style.background = "#057835fa";
            document.querySelector(`[for=${e.target.id}]`).style.color = "white";
            document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            if (this.previousTypeClicked != "") {
                document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.background = "inherit";
                document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.color = "inherit";
                document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            }
            this.previousTypeClicked = e;
        },
        unselectStatusBtn: function (e) {
            this.pageNum = 0;
            this.tireObj.status = this.tireObj.status.filter(function (a) { return a !== e.target.value; });
            e.target.parentNode.style.background = "inherit";
            e.target.parentNode.style.color = "inherit";
            e.target.parentNode.querySelector(":scope > button").style.display = "none";
        },
        unselectPriceBtn: function () {
            this.pageNum = 0;
            this.tireObj.price = "";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.background = "inherit";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.color = "inherit";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            this.previousPriceClicked = "";
        },
        unselectTypeBtn: function () {
            this.pageNum = 0;
            this.tireObj.type = "";
            document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.background = "inherit";
            document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.color = "inherit";
            document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            this.previousTypeClicked = "";
        },
        addItem: function (index) {
            this.sendId = parseInt(this.currentPageItems[index].tire_id);
            this.showQuickView = !this.showQuickView;
        },

        closeView: function () {
            this.showQuickView = !this.showQuickView;
        },

        displayFilterDrop: function () {
            let divControl1 = document.getElementsByClassName("filter-heading");
            let divControl2 = document.getElementsByClassName("filter-section");
            for (var i = 0; i < divControl1.length; i++) {
                if (this.showDropDown) {
                    divControl1[i].style.display = "none";
                    divControl2[i].style.display = "none";
                }
                else {
                    divControl1[i].style.display = "block";
                    divControl2[i].style.display = "block";
                }
            }
            this.showDropDown = !this.showDropDown;
        }

    },
    components: { QuickView }
};
</script>

<style scoped>
input[type="button"] {
    background: none;
    color: inherit;
    border: none;
    padding: 0;
    font: inherit;
    cursor: pointer;
    outline: inherit;
}

.unselect-btn:active,
.unselect-btn:focus,
.action-btn:active,
.action-btn:focus {
    border: none;
    outline: none;
}

hr {
    border-top: 3px solid #057835fa;
    width: 100%;
}

.unselect-btn {
    background: transparent;
    padding-right: 10px;
    cursor: pointer;
    color: inherit;
    display: none;
}


.filter-section {
    width: inherit;
}

.filter-heading {
    padding-top: 30px;
}

.filter-heading h1 {
    color: #27ae60;
}

.filter-option {
    list-style-type: none;
    width: inherit;
}

.filter-option label {
    width: 100%;
    font-size: 15px;
    padding: 3px 0px;

}

.filter-option label:hover {
    color: white;
    background-color: #f38609 !important;
    transition: all 0.5s ease;
}

.search-box {
    width: 100%;
    justify-content: center;
    position: relative;
    display: flex;
}

.search-input {
    margin: 0;
    width: 100%;
    height: 40px;
    font-size: 20px;
    color: white;
    background: #27ae60;
}

::placeholder {
    color: white;
}

.menu-section {
    padding: 2rem 9%;
}

.menu-section .menu-tabs {
    margin-bottom: 30px;
    flex: 0 0 100%;
    max-width: 100%;
    text-align: center;
    background-color: #27ae60;
}

.menu-section .menu-tabs .menu-tab-item {
    display: inline-block;
    cursor: pointer;
    padding: 5px 30px;
    border-radius: 30%;
    font-size: 20px;
    color: whitesmoke;
    font-weight: 500;
    text-transform: capitalize;
    transition: all 0.3s ease;
    margin: 0;
}

.menu-section .menu-tabs .menu-tab-item:hover {
    background-color: #f38609 !important;
}

.menu-section .menu-tabs .menu-tab-item p {
    padding: none;
    margin: none;
}

.menu-section .box-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap: 1.5rem;
}

.menu-section .box-container .box {
    border-radius: 0.5rem;
    position: relative;
    background: #f7f7f7;
    padding: 2rem;
    text-align: center;
}

.menu-section .box-container .box .fa-heart {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
    font-size: 2.5rem;
    color: #666;
    cursor: pointer;
}

.menu-section .box-container .box .fa-heart:hover {
    color: #27ae60;
}

.menu-section .box-container .box .image {
    margin: 1rem 0;
}

.menu-section .box-container .box .image img {
    height: 15rem;
}

.menu-section .box-container .box .content h3 {
    font-size: 2rem;
    color: #130f40;
}

.menu-section .box-container .box .content .stars {
    padding: 1rem 0;
    font-size: 1.7rem;
}

.menu-section .box-container .box .content .stars i {
    color: gold;
}

.menu-section .box-container .box .content .stars span {
    color: #666;
}

.menu-section .box-container .box .content .desc p {
    font-size: 14px;
    margin: 0;
}

.menu-section .box-container .box .content .price {
    font-size: 2rem;
    color: #130f40;
}

.menu-section .box-container .box .content .price span {
    font-size: 1.5rem;
    color: #666;
    text-decoration: line-through;
}

.menu-section .action-row {
    padding-top: 30px;
    width: 100%;
    text-align: center;
    font-size: 20px;
}

.menu-section .action-row .action-btn {
    background-color: #27ae60;
    padding: 3px;
    border: 2px solid #27ae60;
    border-radius: 30%;
    color: white;
}

.menu-section .action-row span {
    margin-right: 15px;
}

.menu-section .action-row span:hover {
    cursor: pointer;
}

.menu-section .action-row span.highlight {
    color: #f38609;
}

.menu-section .action-row span:first-of-type {
    margin-left: 15px;
}

.filter-drop-down {
    display: none;
}

@media (min-width: 576px) {

    .filter-heading,
    .filter-section {
        display: block !important;
    }
}

@media (max-width: 768px) {
    .menu-section .box-container {

        grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
        gap: 1rem;
    }

    .menu-section .box-container .box .content h3 {
        height: 4rem;
    }
}

@media (max-width: 576px) {

    .search-box,
    .filter-heading,
    .filter-section {
        width: auto;
    }

    .filter-option {
        width: 100%;
    }

    .filter-drop-down {
        display: block;
        background-color: #27ae60;
        color: white;
        font-weight: 400;
        margin-bottom: 15px;
        margin-top: 15px;

    }

    .filter-drop-down p {
        font-size: 20px;
        padding: 5px 0px;
        margin: 0;
        display: flex;
        justify-content: space-between;
    }

    .filter-drop-down p span {
        font-size: 20px;
        padding-right: 10px;
        text-transform: lowercase;
        font-weight: 300;
    }

    .filter-heading,
    .filter-section {
        display: none;
    }

    .menu-tabs .menu-tab-item {
        font-size: 12px !important;
        padding: 5px 20px !important;
    }

    .menu-section .action-row {
        font-size: 16px !important;
    }

    .menu-section .action-row span {
        margin-right: 5px;
    }

    .menu-section .box-container .box .image img {
        height: 10rem;
    }

    .menu-section .box-container .box .desc p,
    .menu-section .box-container .box .content .stars {
        font-size: 10px !important;
    }

    .menu-section .box-container .box .content h3 {
        font-size: 14px !important;
        height: 28px;
    }
}
</style>
