void calcularAutonomia({required double combustivel, required double eficiencia}) {
  double autonomia = combustivel * eficiencia;
  print('A autonomia do veículo é de $autonomia km.');
}

void main() {
  calcularAutonomia(combustivel: 80.0, eficiencia: 12.0); 
}