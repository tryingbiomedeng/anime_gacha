const express = require('express');
const cors = require('cors');
const logger = require('morgan')

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

module.exports = api;