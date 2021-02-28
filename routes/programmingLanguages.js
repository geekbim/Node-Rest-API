const express = require('express')
const router = express.Router()
const programmingLanguages = require('../services/programmingLanguages')

// GET Programming Languages
router.get('/', async (req, res,  next) => {
    try {
        res.json(await programmingLanguages.getMultiple(req.query.page))
    } catch (error) {
        console.error('Error while getting  programming languages ', error.message)
        next(error)
    }
})

module.exports = router