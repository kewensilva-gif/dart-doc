// Exemplos de Correspondência e Passagem de Parâmetros em Dart

// 1. Parâmetros Posicionais Obrigatórios
void saudacao(String nome, int idade) {
  print('Olá, $nome! Você tem $idade anos.');
}

// 2. Parâmetros Nomeados Opcionais
void exibirDados({required String nome, int idade = 0}) {
  print('Nome: $nome, Idade: $idade');
}

// 3. Passagem por Valor
void alterarValor(int numero) {
  numero = 10;
  print('Valor dentro da função: $numero');
}

// 3. Passagem por Referência
void adicionarElemento(List<int> lista) {
  lista.add(100);
  print('Lista dentro da função: $lista');
}

// 4. Parâmetros Variádicos
void somarTudo(String mensagem, [List<int> numeros = const []]) {
  int soma = numeros.fold(0, (a, b) => a + b);
  print('$mensagem: $soma');
}

// 5. Funções como Parâmetros
void executarOperacao(int a, int b, Function operacao) {
  int resultado = operacao(a, b);
  print('Resultado: $resultado');
}

// 6. Parâmetros Dinâmicos
void imprimir(dynamic valor) {
  print('Valor: $valor');
}

void main() {
  // 1. Chamando a função com parâmetros posicionais obrigatórios
  saudacao('Alice', 30);

  // 2. Chamando a função com parâmetros nomeados opcionais
  exibirDados(nome: 'Carlos', idade: 25);
  exibirDados(nome: 'Ana'); // Usará o valor padrão de idade (0)

  // 3. Demonstrando passagem por valor
  int x = 5;
  alterarValor(x);
  print('Valor original: $x'); // Não foi alterado

  // 3. Demonstrando passagem por referência
  List<int> numeros = [1, 2, 3];
  adicionarElemento(numeros);
  print('Lista original: $numeros'); // Foi alterada

  // 4. Chamando a função com lista de argumentos (variádicos)
  somarTudo('Resultado', [1, 2, 3, 4]);
  somarTudo('Sem números'); // Usará o valor padrão da lista

  // 5. Chamando função passando outra função como parâmetro
  executarOperacao(3, 4, (x, y) => x + y); // Soma
  executarOperacao(3, 4, (x, y) => x * y); // Multiplicação

  // 6. Demonstrando uso de parâmetro dinâmico
  imprimir(42);
  imprimir('Olá');
}
