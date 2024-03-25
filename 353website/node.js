// Import required modules
const express = require('express');
const path = require('path');
const app = express();
const mysql = require('mysql');

// Set EJS as the view engine
app.set('view engine', 'ejs');

// Set the directory for views
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));


const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'COMP353DB'
});

// Connect to the database
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to the database');
});





// Define routes
app.get('/', (req, res) => {
    res.render('home');
});
app.get('/CRED', (req, res) => {
    res.render('CRED');
})
app.get('/GetDetails', (req, res) => {
    res.render('GetDetails', {data: "wut"});
})

app.get('/UpdateFacility/:name', (req, res) => {
    const facname = req.params.name;
    db.query(`UPDATE facility SET ... WHERE facility.name = ${facname}`, (err, result) => {
        res.render("CRED");
    })
})

app.get('/getAllEmployees', (req, res) => {
    let sqlquery = "SELECT * FROM employee";
    db.query(sqlquery, (err, result) => {
        res.render("GetDetails", {data: result});
        console.log(result);
    })
})




// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
