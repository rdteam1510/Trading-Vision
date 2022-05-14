const express = require('express');
const router = express.Router();
const { deleteUser } = require('../controllers/deleteUser.controller');

// @desc delete all user info
// method: GET
// route: /api/deleteuser
router.route('/').get(deleteUser);

module.exports = router;