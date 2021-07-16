var dbConn = require("../../config/db.config");

var Product = function(product){
    this.product_name = product.product_name;
    this.brand_id = product.brand_id;
    this.category_id = product.category_id;
    this.model_year = product.model_year;
    this.list_price = product.list_price;
   /* this.description = product.description;
    this.salary = product.salary;
    this.status = product.status ? product.status : 1;
    this.created_at = new Date();
    this.updated_at = new Date();*/
}

// get all employees

Product.getAllEmployees = (result) => {
    dbConn.query('SELECT * FROM products0', (err, res) => {
        if(err){
            console.log("Error while fetching the products", err)
            result(null, err)
        }else{
            console.log("products fetched successfully");
            result(null, res);
        }
    })
}

//Get emp by id

Product.getEmployeeByID = (category_id, result) => {
    dbConn.query(`SELECT * FROM products0 WHERE category_id=?`,category_id, (err, res) => {
        if(err){
            console.log("Error while fetching the employees", err)
            result(null, err)
        } else {
            result(null, res)
        }
    } )

}

// Create new employee
Product.creatingEmployee = (employeeData, result) => {
    dbConn.query(`INSERT INTO products0 SET?`, employeeData, (err, res) => {
        if(err){
            console.log("Error while creating employee", err)
            result(null, err)
        } else {
            console.log("employee inserted")
            result(null, res)
        }
    } )
}

// Update Employee 
Product.updateEmployee = (category_id, employeeData, results) => {
    dbConn.query( "UPDATE products0 SET product_name=?, brand_id=?, category_id=?, model_year=?, list_price=? WHERE category_id = ?", [employeeData.product_name, employeeData.brand_id, employeeData.category_id, employeeData.model_year, employeeData.list_price, category_id],
        (err, res) => {
            if (err) {
                console.log("Error while updating Product", err)
                results(null, err)
            } else {
                console.log("Product updated")
                results(null, res)
            }
        })
}

//Delete Employee
Product.deleteEmployee = (id, result) => {
    dbConn.query(`DELETE FROM employees WHERE id=?`, [id], (err, res) => {
        if (err) {
            console.log("Error while deleting employee employee", err)
            result(null, err)
        } else {
            console.log("employee deleted")
            result(null, res)
        }
    })
}


module.exports = Product;