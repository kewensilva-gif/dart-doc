class A {
  int valor;
  A(this.valor);
}

class B {
  int valor;
  B(this.valor);
}

void main() {
  A objeto_1 = A(10);
  B objeto_2 = B(10);
  print(objeto_1.runtimeType == objeto_2.runtimeType); ///tipos diferentes, valores iguais = False
}