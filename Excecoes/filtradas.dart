void main() {
  try {
    String? nome = null;
    print(nome!.length); 
  } on TypeError {
    print('Erro: tentativa de acessar um objeto nulo.');
  } catch (e) {
    print('Outro erro: $e');
  }
}