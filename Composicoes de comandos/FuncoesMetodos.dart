double calcularConsumo(double distancia, double eficiencia) {
  return distancia / eficiencia;  
}

void main() {
  double distanciaViagem = 200.0;  
  double eficienciaCarro = 12.0;   

  double consumo = calcularConsumo(distanciaViagem, eficienciaCarro);
  print('Consumo estimado de combustível para a viagem: $consumo litros.');
}