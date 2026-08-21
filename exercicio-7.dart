// Contagem de palavras
// Crie uma classe ContadorPalavras que possua uma List<String> contendo várias
// palavras. Crie um método que utilize um Map<String, int> para armazenar a
// quantidade de vezes que cada palavra aparece na lista

class ContadorPalavras {
  List<String> palavras = [
    'flash',
    'superman',
    'flash',
    'batman',
    'flash',
    'mulher maravilha',
    'batman',
  ];

  Map<String, int> contarPalavras() {
    Map<String, int> contagem = {};
    for (var palavra in palavras) {
      if (contagem.containsKey(palavra)) {
        contagem[palavra] = contagem[palavra]! + 1;
      } else {
        contagem[palavra] = 1;
      }
    }
    return contagem;
  }
}

void main() {
  ContadorPalavras contador = ContadorPalavras();
  Map<String, int> resultado = contador.contarPalavras();
  print('Contagem de palavras: $resultado');
}