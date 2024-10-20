class Node {
  String valor;
  Node? proximo; // recurssividaade na mesma classe
  
  Node(this.valor);
}

void main ()
{
  Node primeiro = Node("Primeiro");
  Node segundo = Node("Segundo");
  primeiro.proximo = segundo;
  
  print(primeiro.valor); 
  print(primeiro.proximo?.valor); ///chamada recurssiva
}