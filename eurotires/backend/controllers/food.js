// import functions from tire model

import {
    gettires,
    gettireById,
    inserttire,
    updatetireById,
    deletetireById,
} from "../models/tireModel.js";

// get all tires
export const showtires=(req,res)=>{
    gettires((err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// get single tire
export const showtireById=(req,res)=>{
    gettireById(req.params.id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// create tire
export const createtire=(req,res)=>{
    const data = req.body;
    inserttire(data,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// update tire
export const updatetire=(req,res)=>{
    const data = req.body;
    const id = req.params.id;
    updatetireById(data,id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// delete tire
export const deletetire=(req,res)=>{
    const id = req.params.id;
    deletetireById(id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};