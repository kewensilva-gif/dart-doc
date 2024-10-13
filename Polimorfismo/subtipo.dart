class Veiculo {
  void fazerSom() {
    print("tuts tuts");
  }
}

class Carro extends Veiculo {
  @override
  void fazerSom() {
    print("Vrumm");
  }
}

class Moto extends Veiculo {
  @override
  void fazerSom() {
    print("Bi bi");
  }
}

void main() {
  Veiculo veiculo = Carro();
  veiculo.fazerSom(); 

  veiculo = Moto();
  veiculo.fazerSom(); 
}
