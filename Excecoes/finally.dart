void main() {
  try {
    double resultado = 10 / 0; 
    print(resultado);
  } catch (e) {
    print('Erro de divisão por zero.');
  } finally {
    print('Operação finalizada, com ou sem erro.');
  }
}