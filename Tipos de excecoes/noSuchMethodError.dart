class Carro {
  void ligar() => print('Carro ligado');
}

void main() {
  Carro? carro;
  try {
    carro!.ligar();
  } catch (e) {
    print('Erro: método não pode ser chamado em um objeto nulo. $e');
  }
}