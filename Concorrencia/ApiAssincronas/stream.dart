Stream<String> receberVeiculos() async* {
  List<String> veiculos = ['Carro', 'Caminhao', 'Moto', 'aviao'];

  for (var veiculo in veiculos) {
    await Future.delayed(Duration(seconds: 1)); 
    yield veiculo;  
  }
}

void main() async {
  await for (var veiculo in receberVeiculos()) {
    print('Recebido: $veiculo');
  }
}