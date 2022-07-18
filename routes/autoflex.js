const express = require('express');
const router = express.Router();

const AutoflexController = require('../controllers/AutoflexController');

router.get('/', AutoflexController.index);

module.exports = router;