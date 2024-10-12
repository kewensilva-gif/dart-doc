
class exibir<Algo> {
  Algo informacao;

  exibir(this.informacao);

  void tela() {
    print(informacao);
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void saudacao() {
    print('Ola, meu é nome $nome e tenho $idade anos');
  }
}

void main()
{
  List<int> numeros = [6,12,18];/// coleçao ordenada de elementos
  print(numeros);

  Map<String,int> idades =/// coleçao de duplas chave-valor
  {
    'Luana' : 30,
    'Joseval': 60,
    'Jonas': 12,
  };
  print(idades);

  Set<String> pet = /// colecao de elmentos sem respetiçao
  {
    'coelho',
    'jabuti',
    'gato',
  };
  print(pet);

  var lista_A = [0,1,2,3];
  var lista_B = [-3,-2,-1];

  var concatenacao = [...lista_B,...lista_A];/// operador para expandir colecao para outra
  print(concatenacao);

  var record = ['Juliana Lopes', 12332112321];/// tipo que agrupa valores, semelhante a tuplas
  print('Nome: ${record[0]}, CPF: ${record[1]}'); 

  var classGenericaDouble = exibir<double>(3.14);///tipo generico
  classGenericaDouble.tela();

  var classGenericaString = exibir<String>("Ola mundo");///tipo generico
  classGenericaString.tela();

   var pessoa = Pessoa('Kewen', 18);/// estrutura encapsulada
    pessoa.saudacao();
}