const express = require('express');
const cors = require('cors');
const logger = require('morgan')
const db = require('./db/connect.js'); 

const api = express();

api.use(cors());
api.use(express.json());
api.use(logger('dev'))

api.get("/", (req, res) => {
    res.json({
        title: "Anime Gacha",
        description: "Collect them all!"
    })
})

api.get('/cards', async (req, res) => {

    try {
      const results = await db.query('SELECT * FROM aniChar');
      
      res.json(results.rows);
  
    } catch (err) {
      console.error(err);
      res.status(500).json({ error: 'Error fetching aniChar' });
    }
  });

module.exports = api;