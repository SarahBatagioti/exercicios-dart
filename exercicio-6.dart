// Lista de números — Maior valor
// Crie uma classe Numeros que possua uma List<int> com 10 números. Crie métodos
// para retornar o maior número, o menor número e a média dos valores armazenados

class Numeros {
  List<int> numeros = [10, 5, 8, 12, 3, 7, 15, 2, 9, 6];

  int maiorNumero() {
    int maior = numeros[0];
    for (var n in numeros) {
      if (n > maior) {
        maior = n;
      }
    }
    return maior;
  }

  int menorNumero() {
    int menor = numeros[0];
    for (var n in numeros) {
      if (n < menor) {
        menor = n;
      }
    }
    return menor;
  }

  double media() {
    int soma = 0;
    for (var n in numeros) {
      soma += n;
    }
    return soma / numeros.length;
  }
}

void main() {
  Numeros listaNumeros = Numeros();

  print('Maior número: ${listaNumeros.maiorNumero()}');
  print('Menor número: ${listaNumeros.menorNumero()}');
  print('Média dos valores: ${listaNumeros.media()}');
}