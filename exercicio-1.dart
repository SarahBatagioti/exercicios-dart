// Funcionário — Reajuste salarial
// Crie uma classe Funcionario com os atributos nome e salario. 
// Crie um método reajustarSalario() que aplique um aumento de 25% ao salário

class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void reajustarSalario() {
    salario += salario * 0.25;
  }
}

void main() {
  var funcionario = Funcionario('Carlos', 2000.0);

  print('Salário inicial de ${funcionario.nome}: R\$ ${funcionario.salario}');

  funcionario.reajustarSalario();

  print('Salário após o reajuste: R\$ ${funcionario.salario}');
}