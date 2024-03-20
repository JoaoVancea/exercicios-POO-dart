import 'produtos.dart';

main () {
  List<Produto> listaDeCompras = [];

  addProduct(Produto produto) {
    bool verificaQuantidade = produto.verificaQuantidade();
    if(verificaQuantidade) {
        listaDeCompras.add(produto); 
        produto.quantitdadeEstoque = produto.quantitdadeEstoque - produto.quantidade;
        print('produto add ao carrinho');
    }
  };

  Produto produto1 = Produto(
    nome: 'banana',
    preco: 10,
    quantidade: 9,
    quantitdadeEstoque: 10
  );
  Produto produto2 = Produto(
    nome: 'maca',
    preco: 8,
    quantidade: 4,
    quantitdadeEstoque: 10
  );
  
  addProduct(produto1);
  print(listaDeCompras);

  replaceProduct(Produto produto, Produto produto2) {
    int index = listaDeCompras.indexOf(produto);
    if(index != -1){
      listaDeCompras.replaceRange(index, index + 1, [produto2]);
    }
  }

  replaceProduct(produto1, produto2);
  print(listaDeCompras);

  produto2.alterarQuantidade(2);
  print(listaDeCompras);

  if(listaDeCompras.contains(produto2.quantitdadeEstoque < 10)) {
    print('vamos comer o nicao');
  }
}