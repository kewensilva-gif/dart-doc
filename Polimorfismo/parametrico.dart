class Algo<T> {
  T valor;

  Algo(this.valor);

  void exibir() {
    print("O valor é: $valor");
  }
}

void main() {
  Algo<int> x = Algo(10);
  x.exibir(); 
  Algo<String> y = Algo("Olá");
  y.exibir(); 
}