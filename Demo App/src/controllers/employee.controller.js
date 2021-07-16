const Product = require('../models/employee.model');
const EmployeeModel = require('../models/employee.model');

// Get All Eployees List
exports.getEmployeeList = (req, res) => {

    console.log("here all employees list");

    EmployeeModel.getAllEmployees((err, products0) => {

        console.log("employees are here")
        res.send(products0)
    })
}

// Get Employee by Id

exports.getEmployeeByID = (req, res) => {
    console.log('get product by id');
    EmployeeModel.getEmployeeByID(req.params.category_id, (err, products0) => {
        if(err)
        res.send(err);
        res.send(products0);
    })
}

// Create New Employee
exports.createNewEmployee = (req, res) => {
    console.log("Create New Product", req.body )
    const employeeReqData = new EmployeeModel(req.body);

    //check null
    if( req.body.constructor === Object && Object.keys(req.body).length === 0){
        res.send(400).send({success: false, message: "Please fill all the fields"})
    }else{
        console.log("success, valid data")
        //return; 
        EmployeeModel.creatingEmployee(employeeReqData, (err, products0) => {
            if(err)
                res.send(err)
                res.json({ status: true, message: "Created Successfully", data:products0 })
        })
    }
} 

// Update employee
exports.updateEmployee = (req, res) => {
    console.log("Update Employee", req.body )
    const employeeReqData = new EmployeeModel(req.body);

    //check null
    if( req.body.constructor === Object && Object.keys(req.body).length === 0){
        res.send(400).send({success: false, message: "Please fill all the fields"})
    }else{
        console.log("success, valid data")
        //return; 
        EmployeeModel.updateEmployee( req.params.category_id, employeeReqData, (err, products0) => {
            if(err)
                res.send(err)
                res.json({ status: true, message: "Employee Updated Successfully", data:products0 })
        })
    }
}

// Delete Employee By Id
exports.deleteEmployee = (req, res) => {
    EmployeeModel.deleteEmployee( req.params.id, (err, employee) => {
        if(err)
        res.send(err)
        res.json({ success: true, message: "Employee delete successfully...!"})
    })
}