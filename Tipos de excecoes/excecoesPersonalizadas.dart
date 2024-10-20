class NomeInvalidoException implements Exception {
  String mensagem;
  NomeInvalidoException(this.mensagem);
  @override
  String toString() => 'NomeInvalidoException: $mensagem';
}

void validarNomeUsuario(String nome) {
  if (nome.isEmpty || nome.length < 5) {
    throw NomeInvalidoException('O nome de usuário deve ter pelo menos 5 caracteres.');
  }
  print('Nome de usuário "$nome" é válido!');
}

void main() {
  try {
    validarNomeUsuario('Jose');  
  } catch (e) {
    print('Erro capturado: $e');
  }
}
