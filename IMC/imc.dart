import 'dart:io';

main() {

  //Criar IMC
  //Calcular Peso / Altura²

  print('Digite seu nome:');
  final String? name = stdin.readLineSync();  

  print('Digite seu peso:');
  final String? pesoString = stdin.readLineSync();

  print('Digite sua altura');
  final String? alturaString = stdin.readLineSync();

  print('\n\n');
  print('Nome: $name');

  double peso = double.parse(pesoString!);
  double altura = double.parse(alturaString!);

  double resultado = peso / (altura*altura);

  if(resultado > 25){
    print('Você está gordo!');
  } else if(resultado < 18){
    print('Você está magro!');
  }else{
    print('Peso normal!');
  }

}

// int = inteiros (1,2,3,4,5,6)
// double = decimal (1.0,2.3,3,14)
// string = Representa Textos
