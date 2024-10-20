void calcularAutonomia(double combustivel, double eficiencia, [double? margemSeguranca]) {
  double autonomia = combustivel * eficiencia;
  
  if (margemSeguranca != null) {
    autonomia -= margemSeguranca;
    print('Autonomia com margem de segurança: $autonomia km.');
  } else {
    print('Autonomia sem margem de segurança: $autonomia km.');
  }
}

void main() {
  calcularAutonomia(40.0, 12.0); 
  calcularAutonomia(40.0, 12.0, 50.0);  
}