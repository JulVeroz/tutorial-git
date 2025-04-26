void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|Desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles

  print('Pacientes com mais de 20 anos:\n');
  for (final paciente in pacientes) {
    var dados = paciente.split('|');
    if ((int.parse(dados[1]) > 20)) {
      print('Nome: ${dados[0]}\n Idade: ${dados[1]}\n');
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)

  var desenvolvedor = 0;
  var estudante = 0;
  var dentista = 0;
  var jornalista = 0;

  print('Quantidade de pacientes nas profissões:\n');

  for (var profissao in pacientes) {
    var dados = profissao.split('|');

    if (dados[2].toLowerCase() == 'desenvolvedor') {
      desenvolvedor++;
    } else if (dados[2].toLowerCase() == 'estudante') {
      estudante++;
    } else if (dados[2].toLowerCase() == 'dentista') {
      dentista++;
    } else if (dados[2].toLowerCase() == 'jornalista') {
      jornalista++;
    }
  }

  print('Desenvolvedores: $desenvolvedor\n'
      'Estudantes: $estudante\n'
      'Dentistas: $dentista\n'
      'Jornalistas: $jornalista\n');

  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var moradoresSP = 0;

  for (var sp in pacientes) {
    var dados = sp.split('|');
    if (dados[3] == 'SP') {
      moradoresSP++;
    }
  }

  print('Quantidade de pacientes em SP: $moradoresSP');
}
