import express from "express";
import bodyParser from "body-parser";
import {dirname} from "path";
import {fileURLToPath} from "url";
import pg from "pg";
import bcrypt from "bcrypt";
import passport from "passport";
import { Strategy } from "passport-local";
import GoogleStrategy from "passport-google-oauth2";
import session from "express-session";
import 'dotenv/config';




const app = express();
const port = process.env.SERVER_PORT;
const __dirname = dirname(fileURLToPath(import.meta.url));


app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: true }));


const db = new pg.Client({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});
db.connect();


const about_place = async (placeId)=>{
  const result = await db.query("SELECT * FROM tour_places WHERE id = $1", [placeId]);
  return result.rows;
}


const load = async()=>{
  const result = await db.query("SELECT id, name, about, image_link FROM tour_places")
  return result.rows;
}




app.get("/", async (req, res) => {
  
  res.render(__dirname + "/views/index.ejs",{
    places: await load(),
  })
});


app.get("/view-more/", async (req, res) =>{
  const placeId = req.query.id;
  let result = about_place(placeId);
  res.render(__dirname + "/views/place_details.ejs",{
    details: await about_place(placeId),
  })
  
});

app.get("/about", (req, res)=>{
  res.render(__dirname + "/views/about.ejs");
});

app.get("/contact", (req, res) => {
  res.render(__dirname + "/views/contact.ejs");
});





app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
