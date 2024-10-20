Future<bool> verificarManutencao() async {
  print('Verificando a manutenção do veículo');
  await Future.delayed(Duration(seconds: 3)); 
  return true; 
}

void main() async {
  bool emDia = await verificarManutencao();
  if (emDia) {
    print('manuteçao OK!');
  } else {
    print('O veículo precisa de manutenção.');
  }
}