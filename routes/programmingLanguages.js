const express = require('express')
const router = express.Router()
const programmingLanguages = require('../services/programmingLanguages')

// GET Programming Languages
router.get('/', async (req, res, next) => {
    try {
        res.json(await programmingLanguages.getMultiple(req.query.page))
    } catch (err) {
        console.err('Error while getting  programming languages ', err.message)
        next(err)
    }
})

// POST Programming Languages
router.post('/', async (req, res, next) => {
    try {
        res.json(await programmingLanguages.create(req.body))
    } catch (err) {
        console.err(`Error while creating programming languages`, err.message)
        next(err)
    }
})

// PUT Programming Languages
router.put('/:id', async (req, res, next) => {
    try {
        res.json(await programmingLanguages.update(req.params.id, req.body))
    } catch (err) {
        console.error('Error while updating programming language', err.message)
        next(err)
    }
})

// DELETE Programming Languages
router.delete('/:id', async (req, res, next) => {
    try {
        res.json(await programmingLanguages.remove(req.params.id))
    } catch (err) {
        console.error('Error while deleting programming language', err.message)
        next(err)
    }
})

module.exports = router