void overload({int? a, String? b})
{
   a != null && b == null?
   print("chamando inteiro: $a"):
   print("chamando String:  $b");
}

void main() {
  overload(a: 10);
  overload(b:"Olá");
}