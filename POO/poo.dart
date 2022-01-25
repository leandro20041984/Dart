void main(){
  final leandro = Pessoa(name: 'Leandro', altura: 1.8, peso: 65,);

  final karen = Pessoa(name: 'Karen', altura: 1.68, peso: 72);

  final medico = Medico(altura: 1.80, peso: 75, name: 'Jose', crm: 123456789);

  print(leandro.name);
  print(leandro.calcularImc());
  print(karen.name);
  print(karen.calcularImc());
  print(medico.name);
  print(medico.calcularImc());

}

//Herança - Herda todos os atributos da classe Pessoa, atribuindo campos especificos da classe Médico
class Medico extends Pessoa{
  final int crm;

  Medico({
    required this.crm,
    required String name,
    required double altura,
    required double peso,

  }) : super(name: name, altura: altura, peso: peso);
}

class Pessoa {
  final String name;
  final double altura;
  final double peso;

  Pessoa({required this.name, required this.altura, required this.peso}); 

  double calcularImc(){
    return peso/ (altura * altura);
  }

}