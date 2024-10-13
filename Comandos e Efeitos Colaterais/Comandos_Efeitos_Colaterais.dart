// Variável global (pode causar efeitos colaterais)
int contadorGlobal = 0;

// Função com efeito colateral: altera o valor de uma variável global
void incrementarGlobal() {
  contadorGlobal++;
  print('Contador global: $contadorGlobal');
}

// Função sem efeito colateral: não altera nada fora dela
int somaSemEfeito(int a, int b) {
  return a + b;
}

// Função com efeito colateral: imprime no console (saída externa)
void exibirMensagem(String mensagem) {
  print('Mensagem: $mensagem'); // Efeito colateral: saída no console
}

// Função que modifica uma lista (efeito colateral sobre a coleção)
void adicionarItem(List<String> lista, String item) {
  lista.add(item); // Modifica a lista recebida
  print('Item adicionado: $item');
}

// Função assíncrona com efeito colateral: escrita em arquivo
import 'dart:io';

Future<void> registrarEmArquivo(String caminho, String conteudo) async {
  final arquivo = File(caminho);
  await arquivo.writeAsString(conteudo, mode: FileMode.append);
  print('Registro gravado no arquivo.');
}

// Função principal para executar os exemplos
void main() async {
  // 1. Exemplo de variável global sendo modificada
  incrementarGlobal(); // Contador: 1
  incrementarGlobal(); // Contador: 2

  // 2. Função sem efeito colateral
  int resultado = somaSemEfeito(3, 4);
  print('Resultado da soma: $resultado');

  // 3. Função com efeito colateral: saída no console
  exibirMensagem('Olá, Dart!');

  // 4. Modificando uma lista (efeito colateral sobre coleção)
  List<String> tarefas = ['Estudar Dart'];
  adicionarItem(tarefas, 'Fazer exercícios');
  print('Tarefas: $tarefas'); // Lista modificada

  // 5. Função com efeito colateral assíncrono: gravação em arquivo
  String caminho = 'log.txt';
  await registrarEmArquivo(caminho, 'Registro de evento.\n');

  // Verificando se a lista foi realmente alterada
  print('Lista final de tarefas: $tarefas');
}
