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

// POST Programming Languages
router.post('/', async (req, res, next) {
    try {
        res.json(await programmingLanguages.create(req.body))
    } catch (error) {
        console.error(`Error while creating programming languages`, error.message)
        next(error)
    }
})

module.exports = router