Future<void> bombaAbastecimento(double litros) async {
  print('Iniciando o abastecimento de $litros litros');
  await Future.delayed(Duration(seconds: 3));  
  print('Abastecimento de $litros litros concluído!');
}

void main() async {
  await bombaAbastecimento(80);
}