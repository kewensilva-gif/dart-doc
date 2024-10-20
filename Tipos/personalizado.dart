typedef somar = int Function(int, int);

int soma(int a, int b) => a + b;

void main()
{
   somar operacaoSoma = soma;
   print(operacaoSoma(10, 20)); 
}