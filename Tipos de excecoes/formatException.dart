void main() {
  try {
    String data = '20-10-2024';
    DateTime.parse(data); 
  } on FormatException {
    print('Erro de formatação: data no formato incorreto.');
  }
}