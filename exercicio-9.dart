// Lista de alunos e notas
// Crie uma classe Turma que possua uma List<String> com os nomes dos alunos e um
// Map<String, double> com suas respectivas notas. Crie um método que retorne uma
// lista contendo apenas os nomes dos alunos aprovados, considerando nota maior ou igual a 6.

class Turma {
  List<String> alunos = [];
  Map<String, double> notas = {};

  void adicionarAluno(String nome, double nota) {
    alunos.add(nome);
    notas[nome] = nota;
  }

  List<String> alunosAprovados() {
    List<String> aprovados = [];
    for (var aluno in alunos) {
      if (notas[aluno]! >= 6) {
        aprovados.add(aluno);
      }
    }
    return aprovados;
  }
}

void main() {
  var turma = Turma();

  turma.adicionarAluno('Sarah', 7.5);
  turma.adicionarAluno('Vinicius', 5.0);
  turma.adicionarAluno('Alinne', 8.0);
  turma.adicionarAluno('Peter', 4.5);

  List<String> aprovados = turma.alunosAprovados();
  print('Alunos aprovados: $aprovados');
}