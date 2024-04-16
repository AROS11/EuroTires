// import functions from User model

import {
    getAllItems,
    getAItem,
    insertToCart,
    updateCartItemQty,
    deleteItemInCart,
    deleteAllItemsByUser
} from "../models/CartModel.js";

// get all Items
export const allItems=(req,res)=>{
    getAllItems(req.params.id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// get a Item
export const getItem=(req,res)=>{
    const user_id = req.params.user_id;
    const tire_id = req.params.tire_id;
    getAItem(user_id,tire_id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// add to cart
export const addItems=(req,res)=>{
    const data = req.body;
    insertToCart(data,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// update Item
export const updateItem=(req,res)=>{
    const data = req.body;
    updateCartItemQty(data,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// delete a item in cart
export const deleteItem=(req,res)=>{
    const user_id = req.params.user_id;
    const tire_id = req.params.tire_id;
    deleteItemInCart(user_id,tire_id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// delete all items in cart
export const deleteItems=(req,res)=>{
    deleteAllItemsByUser(req.params.id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};
