void validarSalario(double salario) {
  if (salario < 0) {
    throw Exception('Salário não pode ser negativo.');
  }
  print('Salário válido: $salario');
}

void main() {
  try {
    validarSalario(-1500); 
  } catch (e) {
    print('Erro: $e');
  }
}