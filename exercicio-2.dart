// Triângulo — Cálculo da área
// Crie uma classe Triangulo com os atributos base e altura. 
// Crie um método alcularArea() que retorne a área do triângulo

class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main() {
  var t1 = Triangulo(10, 20);
  
  double area = t1.calcularArea();

  print('Triângulo com base ${t1.base} e altura ${t1.altura}');
  print('Resultado da área: $area');
}

