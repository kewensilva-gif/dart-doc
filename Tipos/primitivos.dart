import 'dart:io';
void main() {
  // Numbers
  print("\nDeclarações");
  int inteiro = 10;
  print("Inteiro: $inteiro");

  double flutuante = 10.0;
  print("Flutuante: $flutuante");

  // Interpretando hexadecimais
  int hex = 0x2F;
  print("Expoente: $hex");

  // Trabalhando com expoentes direto na declaração
  double expoente = 1.42e5;
  print("Expoente: $expoente");

  print("\nOperações básicas com inteiros");
  // Como ambos herdam da classe num, os dois aceitam as operações básicas, como:
  int aInt = 1;
  int bInt = 2;
  int somaInteiros = aInt + bInt; // soma
  int subInteiros = aInt - bInt; // subtração
  int multInteiros = aInt * bInt; // multiplicação
  int divInteiros = (aInt / bInt).floor(); // divisão - aqui é preciso usar o floor para pegar somente a parte inteira
  double divInteirosDouble = aInt / bInt; // divisão - caso queira a parte fracionária deve-se atribuir a um double
  print("Soma de inteiros: $somaInteiros");
  print("Subtração de inteiros: $subInteiros");
  print("Multiplicação de inteiros: $multInteiros");
  print("Divisão de inteiros parte inteira: $divInteiros");
  print("Divisão de inteiros: $divInteirosDouble");

  print("\nOperações básicas com flutuantes");
  double aFloat = 1.2;
  double bFloat = 2.8;
  double somaFlutuantes = aFloat + bFloat; // soma
  double subFlutuantes = aFloat - bFloat; // subtração
  double multFlutuantes = aFloat * bFloat; // multiplicação
  double divFlutuantes = aFloat / bFloat; // divisão
  print("Soma de flutuante: $somaFlutuantes");
  print("Subtração de flutuante: $subFlutuantes");
  print("Multiplicação de flutuante: $multFlutuantes");
  print("Divisão de flutuante: $divFlutuantes");

  // Também podemos utilizar as funções abs(), ceil() e floor()
  print("\nabs(), ceil() e floor()");
  int negativo = -5;
  int absoluto = negativo.abs(); // retorna o valor absoluto
  int arredondaParaCima = aFloat.ceil(); // Sempre arredonda o número para o próximo inteiro maior
  int arredondaParaBaixo = aFloat.floor(); // Sempre arredonda o número para o inteiro anterior
  print("Função abs: $absoluto");
  print("Função ceil: $arredondaParaCima");
  print("Função floor: $arredondaParaBaixo");

  // Também é possível somar doubles e ints sem ter problemas de tipos, já que os dois herdam da mesma classe
  // O que acontece é que prevalece o tipo double
  num somaDoubleInt = aInt + bFloat;
  print("\nSoma de double e int: $somaDoubleInt");

  print('\nPressione Enter para sair...');
  stdin.readLineSync();  // Espera a entrada do usuário
}