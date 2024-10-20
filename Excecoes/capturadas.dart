Future<void> acessarLista() async {
  try {
    List<int> numeros = [1, 2, 3];
    await Future.delayed(Duration(seconds: 1));
    print(numeros[5]); 
  } catch (e) {
    print('Erro capturado: $e'); 
  }
}

void main() async {
  print('Inicio');
  await acessarLista(); 
  print('Fim');
}
