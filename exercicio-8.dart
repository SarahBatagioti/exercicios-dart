// Cadastro de produtos
// Crie uma classe CadastroProdutos que armazene produtos e seus preços utilizando
// um Map<String, double>. Crie métodos para retornar o produto mais caro, o produto
// mais barato e o valor médio dos produtos cadastrados.

class CadastroProdutos {
  Map<String, double> produtos = {};

  void adicionarProduto(String nome, double preco) {
    produtos[nome] = preco;
  }

  String produtoMaisCaro() {
    String maisCaro = '';
    double maiorPreco = double.negativeInfinity;

    produtos.forEach((nome, preco) {
      if (preco > maiorPreco) {
        maiorPreco = preco;
        maisCaro = nome;
      }
    });

    return maisCaro;
  }

  String produtoMaisBarato() {
    String maisBarato = '';
    double menorPreco = double.infinity;

    produtos.forEach((nome, preco) {
      if (preco < menorPreco) {
        menorPreco = preco;
        maisBarato = nome;
      }
    });

    return maisBarato;
  }

  double valorMedio() {
    if (produtos.isEmpty) return 0.0;

    double somaPrecos = produtos.values.reduce((a, b) => a + b);
    return somaPrecos / produtos.length;
  }
}

void main() {
  var cadastro = CadastroProdutos();

  cadastro.adicionarProduto('Arroz', 5.0);
  cadastro.adicionarProduto('Feijão', 7.5);
  cadastro.adicionarProduto('Macarrão', 3.0);
  cadastro.adicionarProduto('Azeite', 15.0);

  String maisCaro = cadastro.produtoMaisCaro();
  String maisBarato = cadastro.produtoMaisBarato();
  double media = cadastro.valorMedio();

  print('Produto mais caro: $maisCaro');
  print('Produto mais barato: $maisBarato');
  print('Valor médio dos produtos: $media');
}