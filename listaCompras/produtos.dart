import 'dart:io';

main(){

  //Adicionar um produto
  //Imprimir os produtos
  //sair do programa

  final products = [];
  var isRunning = true;

  while (isRunning){
    print("\x1B[2J\x1B[0;0H");
    print('== Lista de Compras (${products.length})- Comandos[add, imprimir]==');
    var input = stdin.readLineSync();

    if (input == 'add'){
      print('Adicione um produto');
      var product = stdin.readLineSync();
      products.add(product);

    } else if (input == 'imprimir'){
        print("\x1B[2J\x1B[0;0H");
        print('Todos os produtos cadastrados');
        print('\n');
        
        for(var i = 0; i < products.length; i++){
          print(products[i]);
        }
      stdin.readLineSync();
    } else {
        isRunning = false;
    }
  }

  print('=== Fim do Programa ===');

}