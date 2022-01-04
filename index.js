//console.log("Hello");
const express = require("express");
const { all } = require("express/lib/application");
const app = express();
const pool = require("./db");

/*app.get("/user", (req, res) => {
  res.send("<h1>Funciona Correctamente</h1>");
});*/
app.use(express.json()); //req.body

//ROUTES

//get all attendance

app.get("/admins", async (req, res) => {
  try {
    // podemos especificar los argumentos que queremos que se vean en el frontend
    const allattendance = await pool.query("SELECT * FROM admin");

    res.json(allattendance.rows);
  } catch (err) {
    console.error(err.message);
  }
});

// get a attendance

app.get("/admins/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const admin = await pool.query(
      "SELECT * FROM admin WHERE admin WHERE admin_id = $1",
      [id]
    );

    res.json(admin.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

// create a attendance

app.post("/admins", async (req, res) => {
  try {
    //await
    //console.log(req.body);
    const { asistencia } = req.body;
    const newAdmin = await pool.query(
      "INSERT INTO attendance (asistencia) VALUES ($1) RETURNING *",
      [asistencia]
    );

    res.json(newAdmin.rows[0]);
  } catch (err) {
    console.error(err.message);
  }
});

// update a attendance

app.put("/admins/id:", async (req, res) => {
  try {
    const { id } = req.params; //where
    const { asistencia } = req.body; //set

    const updateAdmin = await pool.query(
      "UPDATE admin SET asistencia = $1 WHERE admin_id = $2",
      [asistencia, id]
    );

    res.json("Admin was updated!");
  } catch (err) {
    console.error(err.message);
  }
});

// delete a attendance

app.delete("/admins/id:", async (req, res) => {
  try {
    const { id } = req.params;
    const deleteAdmin = await pool.query(
      "DELETE FROM admin WHERE todo_id = $1",
      [id]
    );

    res.json("Admin was succesfuuly deleted");
  } catch (err) {
    console.error(err.message);
  }
});

app.listen(5000, () => {
  console.log("server is listening on port 5000");
});
