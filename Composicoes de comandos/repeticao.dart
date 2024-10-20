void verificarPneus() {
  List<String> pneus = ['Pneu 1', 'Pneu 2', 'Pneu 3', 'Pneu 4'];

  for (var pneu in pneus) {
    print('Verificando a pressão do $pneu');
  }
  print('Todos os pneus foram verificados!');
}

void main() {
  verificarPneus(); 
}