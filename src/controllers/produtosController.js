const ProdutoModel = require('../src/models/ProdutoModel')

module.exports = {
  index: (req, res) => {
    const produtos = ProdutoModel.index();
    return res.render('produtos', { produtos });
  
},
admin: (req, res) => {
  const produtos = ProdutoModel.index();
  return res.render('admin-produtos', { produtos });
},

editar: (req, res) => {
  const { id } = req.params;
  let produto = null

  const erros = validationResult(req).errors;

  if (id) {
    produto = ProdutoModel.buscar(id);
  }

  return res.render('cadastro-edicao', { erros, produto });
},

criar: (req, res) => {
  const { body, file } = req;
  const erros = validationResult(req).errors;

  if (!erros.length) {
    ProdutoModel.criar(body, file);
    return res.redirect('/produtos/admin');
  }

  return res.render('cadastro-edicao', { erros, servico: null })
},

atualizar: (req, res) => {
  const { id } = req.params;

  const erros = validationResult(req).errors;

  if (!erros.length) {
  ProdutoModel.atualizar(id, req.body);
    return res.redirect('/produtos/admin');
  }

  const produto = { id, ...req.body };

  return res.render('cadastro-edicao', { erros, produto })
},

deletar: (req, res) => {
  const { id } = req.params;
  ProdutoModel.deletar(id);
  return res.redirect('/produtos/admin');
}
};
