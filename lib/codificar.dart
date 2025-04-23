import 'dart:io';

import 'package:projetodart/treinar.dart';

void main() {
  var tenisObjeto = Tenis();

  print('Analisador de Tênis.');

  while (true) {
    stdout.write('Marca do tênis: ');
    var marcaTenis = stdin.readLineSync() as String;
    tenisObjeto.marca = marcaTenis;

    stdout.write('Cor do tênis: ');
    var corTenis = stdin.readLineSync() as String;
    tenisObjeto.cor = corTenis;

    stdout.write('Preço do tênis: ');
    var precoTenis = double.parse(stdin.readLineSync()!);
    tenisObjeto.preco = precoTenis;

    print('Características:\n'
        'Marca: ${tenisObjeto.retorneMarca(marcaTenis)}\n'
        'Cor: ${tenisObjeto.retorneCor(corTenis)}\n'
        'Preço: ${tenisObjeto.retornePreco(precoTenis)}');

    stdout.write('Deseja analisar outro tênis? S ou N: ');
    var botaoContinuar = stdin.readLineSync() as String;

    if (botaoContinuar.toLowerCase() == 's') {
      continue;
    } else {
      break;
    }
  }
}
