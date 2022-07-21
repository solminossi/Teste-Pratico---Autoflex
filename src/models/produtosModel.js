const { uuid } = require('uuidv4');
const path = require('path');
const fs = require('fs');

module.exports = {
    produtos: [
      
        {
          id: 1,
          nome: 'Produto 1',
          valor: 'R$ 1.234,00',
          descricao: 'Materia prima 11'
        },
        {
          id: 2,
          nome: 'Produto',
          valor: 'R$ 1.5571,00',
          descricao: 'Materia prima 12'
        },
        
      ],

      index () {
        return this.produtos
      },
    
      criar ({ nome, valor, materiaPrima }, file) {
        if (!nome || !valor || !materiaPrima) return
    
        const filePath = file ? path.join('/images/uploads', file.filename) : ''
    
        this.produtos.push({ id: uuid(), nome, valor, descricao, image: filePath });
      },
    
      buscar (id) {
        return this.produtos.find(produto => produto.id == id);
      },
    
      atualizar (id, { nome, valor, materiaPrima}) {
        if (!id) return
    
        if (!nome || !valor || !materiaPrima) return
    
        const produto = this.buscar(id);
    
        produto.nome = nome;
        produto.valor = valor;
        produto.materiaPrima= materiaPrima;
      },
    
      deletar (id) {
        if (!id) return
    
        const produto = this.buscar(id);
        const filePath = produto.image;
    
        fs.unlink('public' + filePath, (err) => console.log(err));
    
        const index = this.produtos.findIndex(produto => produto.id == id);
        this.produtos.splice(index, 1);
      }
    }
      
  
