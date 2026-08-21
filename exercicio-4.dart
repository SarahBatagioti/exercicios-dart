// Produto dos pares
// Crie uma classe ProdutoPares com um método calcular(int n) que 
// retorne o produto de todos os números pares entre 1 e n

class ProdutoPares {
  int calcular(int n) {
    int produto = 1;
    for (int i = 1; i <= n; i += 1) {
      if (i % 2 == 0) {
        produto *= i;
      }
    }
    return produto;
  }
}

void main() {
  ProdutoPares produtoPares = ProdutoPares();
  int n = 10;
  int resultado = produtoPares.calcular(n);
  print('O produto dos números pares entre 1 e $n é: $resultado');
}