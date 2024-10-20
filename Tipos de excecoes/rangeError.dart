void acessarElemento() {
  List<String> frutas = ['maçã', 'banana', 'jaca'];
  print(frutas[3]); 
}

void main() {
  try {
    acessarElemento();
  } on RangeError {
    print('Erro: tentativa de acessar elemento fora do intervalo da lista.');
  }
}