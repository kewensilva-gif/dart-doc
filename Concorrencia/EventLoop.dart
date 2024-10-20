void imprimirMensagens() {
  print('Processando pedido de abastecimento...');
}

Future<void> abastecer() async {
  print('Abastecimento iniciado.');
  await Future.delayed(Duration(seconds: 1)); 
  print('Abastecimento concluído.');
}

void main() {
  imprimirMensagens();
  abastecer();
  print('Outras operações podem continuar enquanto o abastecimento ocorre.');
}