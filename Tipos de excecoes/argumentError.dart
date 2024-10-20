void definirIdade(int idade) {
  if (idade < 0 || idade > 18) {
    throw ArgumentError('Idade deve estar entre 0 e 18.');
  }
  print('Idade válida: $idade');
}

void main() {
  try {
    definirIdade(-5); 
  } catch (e) {
    print('Erro: $e');
  }
}