void main() {
  var numeros = [1, 2, 3];
  var lista_Num = numeros.map((num)
  {
    print("Processando $num");
    return num * 2;
  });

  print("Resultado nao e necessario");
  
  print(lista_Num.toList()); // Avaliação ocorre apenas quando o resultado é necessário
}
