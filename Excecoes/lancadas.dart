void verificarNome(String nome) {
  if (nome.isEmpty) {
    throw Exception('O nome não pode estar vazio.');
  } else {
    print('Nome válido: $nome');
  }
}

void main() {
  verificarNome('');
}