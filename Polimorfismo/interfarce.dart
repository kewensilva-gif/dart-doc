abstract class Veiculo {
  void mover();
}

class Carro implements Veiculo {
  @override
  void mover() {
    print("carro em movimento");
  }
}

class Moto implements Veiculo {
  @override
  void mover() {
    print("moto em movimento");
  }
}

void main() {
  Veiculo meuVeiculo = Carro();
  meuVeiculo.mover();

  meuVeiculo = Moto();
  meuVeiculo.mover(); 
}
