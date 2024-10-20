void verificarCombustivel(double combustivel) {
  if (combustivel > 9.0) {
    print('Combustível suficiente');
  } else {
    print('Combustível insuficiente');
  }
}

void main() {
  double combustivelAtual = 4.0;
  verificarCombustivel(combustivelAtual); 
}