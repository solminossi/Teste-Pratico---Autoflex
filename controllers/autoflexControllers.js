const AutoflexModel = require('../models/autoflexModel.js');

const AutoflexController = {
  index: (req, res) => {
    const autoflex = AutoflexModel.obterInformacoes();

    res.render('autoflex', { autoflex: autoflex});
  }
}

module.exports = AutoflexController;