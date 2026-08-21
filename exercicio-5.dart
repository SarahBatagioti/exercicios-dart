// Cadastro de notas
// Crie uma classe CadastroNotas que armazene os nomes dos alunos e suas médias
// utilizando um Map<String, double>. Crie um método que retorne os alunos
// aprovados, considerando média maior ou igual a 6

class CadastroNotas {
  Map<String, double> notas = {};

  void adicionarAluno(String nome, double media) {
    notas[nome] = media;
  }

  List<String> alunosAprovados() {
    List<String> aprovados = [];
    notas.forEach((nome, media) {
      if (media >= 6) {
        aprovados.add(nome);
      }
    });
    return aprovados;
  }
}

void main() {
  var cadastro = CadastroNotas();

  cadastro.adicionarAluno('Sarah', 7.5);
  cadastro.adicionarAluno('Vinicius', 5.0);
  cadastro.adicionarAluno('Alinne', 8.0);
  cadastro.adicionarAluno('Peter', 4.5);

  List<String> aprovados = cadastro.alunosAprovados();
  print('Alunos aprovados: $aprovados');
}