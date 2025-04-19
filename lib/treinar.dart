import 'dart:io';

void main() {
  print('Registro de 3 Médicos - Centro Médico');

  // [<dado do tipo inteiro, dado do tipo String>]
  Map<int, String> medicos = {};
  Map<String, int> dataNascimento = {};

  while (medicos.length < 3) {
    stdout.write('Seja bem vindo(a).\n'
        'Digite seu nome: ');
    var nome = stdin.readLineSync() as String;

    stdout.write('Digite a data de nascimento: ');
    var dataEntrada = int.parse(stdin.readLineSync()!);

    medicos[medicos.length + 1] = 'Nome: $nome\n';
    dataNascimento['Data de nascimento: '] = dataEntrada;
  }

  medicos.forEach(
    (key, value) {
      print('$key. $value');
    },
  );

  /* Resultado: {Key}1. {value}Nome: $nome
      Data de nascimento: $data
      2. Nome: $nome
      Data de nascimento: $data
      3. Nome: $nome
      Data de nascimento: $data
  */
}
