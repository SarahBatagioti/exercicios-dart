// Controle de estoque
// Crie uma classe Estoque que utilize um Map<String, int> para armazenar o nome de
// produtos e suas respectivas quantidades. Crie métodos para adicionar produtos, remover
// quantidades, consultar o estoque de um produto e retornar uma lista com os produtos
// que possuem estoque igual a zero.

class Estoque {
  Map<String, int> produtos = {};

  void adicionarProduto(String nome, int quantidade) {
    if (produtos.containsKey(nome)) {
      produtos[nome] = produtos[nome]! + quantidade;
    } else {
      produtos[nome] = quantidade;
    }
  }

  void removerQuantidade(String nome, int quantidade) {
    if (produtos.containsKey(nome)) {
      produtos[nome] = produtos[nome]! - quantidade;
      if (produtos[nome]! <= 0) {
        produtos.remove(nome);
      }
    }
  }

  int consultarEstoque(String nome) {
    return produtos[nome] ?? 0;
  }

  List<String> produtosSemEstoque() {
    List<String> semEstoque = [];
    for (var produto in produtos.keys) {
      if (produtos[produto] == 0) {
        semEstoque.add(produto);
      }
    }
    return semEstoque;
  }
} 

void main() {
  Estoque estoque = Estoque();

  estoque.adicionarProduto('Arroz', 10);
  estoque.adicionarProduto('Feijão', 5);
  estoque.adicionarProduto('Macarrão', 0);

  print('Estoque de Arroz: ${estoque.consultarEstoque('Arroz')}');
  print('Estoque de Feijão: ${estoque.consultarEstoque('Feijão')}');
  print('Estoque de Macarrão: ${estoque.consultarEstoque('Macarrão')}');

  estoque.removerQuantidade('Arroz', 5);
  print('Estoque de Arroz após remoção: ${estoque.consultarEstoque('Arroz')}');

  List<String> produtosSemEstoque = estoque.produtosSemEstoque();
  print('Produtos sem estoque: $produtosSemEstoque');
}