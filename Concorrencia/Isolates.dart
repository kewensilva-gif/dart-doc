import 'dart:isolate';

void calcularEficiencia(SendPort sendPort) {

  double eficiencia = 15.0;  
  sendPort.send(eficiencia);
}

void main() async {

  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(calcularEficiencia, receivePort.sendPort);
  double eficiencia = await receivePort.first;
  print('A eficiência do veículo é: $eficiencia km/l');
}