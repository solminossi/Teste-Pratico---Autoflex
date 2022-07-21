const express = require('express');
const router = express.Router();
const ProdutosController = require('../controllers/produtosController');
const validadorCadastroProdutos = require('../middlewares/validadorCadastroProdutos');
const multer = require('../middlewares/multer');
const auth = require('../middlewares/auth');

router.get('/cadastrar', ProdutosController.editar);
router.post('/cadastrar',  multer.single('produto-img'), validadorCadastroProdutos, ProdutosController.criar);

router.get('/', ProdutosController.index);
router.get('/admin', auth, ProdutosController.admin);

router.get('/editar/:id', ProdutosController.editar);
router.put('/editar/:id', multer.single('produto-img'), validadorCadastroProdutos, ProdutosController.atualizar);

router.delete('/deletar/:id', ProdutosController.deletar);

module.exports = router;