const ProdutoModel = require('../models/ProdutoModel');

module.exports = {
  index: (req, res) => {
    const produtos = ProdutoModel.index();
    return res.render('index', { produtos });
  }
}