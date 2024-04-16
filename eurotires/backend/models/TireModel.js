// import connection
import db from "../config/database.js";

// get all tires
export const gettires = (result) => {
    db.query("SELECT * FROM tire", (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};

// get single tires
export const gettireById = (id,result) => {
    db.query("SELECT * FROM tire WHERE tire_id = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};

// insert tire
export const inserttire = (data,result) => {
    db.query("INSERT INTO tire SET ?",data, (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};

// update tire
export const updatetireById = (data,id,result) => {
    db.query("UPDATE tire SET tire_name = ?, tire_price = ? WHERE tire_id = ?",[data.tire_name, data.tire_price, id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};


// delete tire
export const deletetireById = (id,result) => {
    db.query("DELETE FROM tire WHERE tire_id = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};