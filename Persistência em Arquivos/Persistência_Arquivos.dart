import 'dart:io';

// Função para gravar dados em um arquivo
Future<void> gravarDados(String caminho, String conteudo) async {
  final arquivo = File(caminho);
  await arquivo.writeAsString(conteudo);
  print('Dados gravados com sucesso!');
}

// Função para ler dados de um arquivo
Future<void> lerDados(String caminho) async {
  try {
    final arquivo = File(caminho);
    String conteudo = await arquivo.readAsString();
    print('Conteúdo do arquivo:\n$conteudo');
  } catch (e) {
    print('Erro ao ler o arquivo: $e');
  }
}

// Função para adicionar dados ao final do arquivo
Future<void> adicionarDados(String caminho, String conteudo) async {
  final arquivo = File(caminho);
  await arquivo.writeAsString(conteudo, mode: FileMode.append);
  print('Dados adicionados ao arquivo.');
}

// Função principal
void main() async {
  String caminho = 'dados.txt'; // Nome do arquivo

  // Gravando dados no arquivo
  await gravarDados(caminho, 'Linha 1: Dados iniciais.\n');

  // Adicionando mais dados ao final do arquivo
  await adicionarDados(caminho, 'Linha 2: Mais informações.\n');

  // Lendo e exibindo os dados do arquivo
  await lerDados(caminho);
}
