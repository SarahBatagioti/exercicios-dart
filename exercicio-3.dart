// Números — Pares e ímpares
// Crie uma classe Numeros que possua uma List<int> contendo 5 números.
// Crie os métodos somarPares() e somarImpares() para retornar, respectivamente, a soma dos números pares e a soma dos números ímpares. 

class Numeros {
  List<int> numeros = [10, 15, 20, 25, 30]; 

  int somarPares() {
    int total = 0;
    for (var n in numeros) {
      if (n % 2 == 0) {
        total += n;
      }
    }
    return total;
  }

  int somarImpares() {
    int total = 0;
    for (var n in numeros) {
      if (n % 2 != 0) {
        total += n;
      }
    }
    return total;
  }
}

void main() {
  Numeros listNumeros = Numeros();

  print('Soma dos pares: ${listNumeros.somarPares()}');
  print('Soma dos ímpares: ${listNumeros.somarImpares()}');
}