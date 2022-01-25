import 'dart:io';

void main() {
  //Criar IMC
  //Calcular Peso / Altura²

  final String name = pegarNome();

  double peso = pegarPeso();
  double altura = pegarAltura();

  print('\n\n');
  print('Nome: $name');

  double resultado = calcularIMC(altura: altura, peso: peso);

  if(resultado > 25){
    print('Você está gordo!');
  } else if(resultado < 18){
    print('Você está magro!');
  }else{
    print('Peso normal!');
  }
}

double calcularIMC({required double peso, required double altura}){
  return peso / (altura * altura);
}

pegarNome(){
  print('Digite seu nome:');
  final String? name = stdin.readLineSync();  

  if (name == null) {
    return 'Anônimo';
  } else {
    return name;
  }
}

pegarPeso() {
  print('Digite seu peso:');
  final String? pesoString = stdin.readLineSync();
  if(pesoString == null){
    return 0.0;
  } else {
    return double.parse(pesoString);
  }
}

pegarAltura() {
  print('Digite sua altura');
  final String? alturaString = stdin.readLineSync();
  if(alturaString == null){
    return 0.0;
  } else{
    return double.parse(alturaString);
  }
}