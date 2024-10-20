void calcularAutonomia(double combustivel, double eficiencia) {
  double autonomia = combustivel * eficiencia;
  print('A autonomia do veículo é de $autonomia km.');
}

void main() {
  calcularAutonomia(80.0, 12.0);
}