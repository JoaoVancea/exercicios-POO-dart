class Produto {
  String nome;
  double preco;
  int quantidade;
  int quantitdadeEstoque;

  Produto({required this.nome, required this.preco, required this.quantidade, required this.quantitdadeEstoque});

  void alterarQuantidade(int novaQuantidade) {
    this.quantidade = novaQuantidade;
  }

  @override
  String toString(){
    return 'Nome: $nome, preço: $preco, quantidade: $quantidade';
  }

  verificaQuantidade() {
    if ((quantitdadeEstoque - quantidade) < 0) {
      
      print('não temos esta quantidade');
      return false;
    } else {
      return true;
    }
  }
}