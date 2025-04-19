// Variáveis privadas Ex: _cor.
// 1. Variáveis que podem ser acessadas apenas por métodos getters e setters.

// Variáveis Públicas Ex: cor.
// Variáveis que podem ser acessadas normalmente apenas acessando.

class Camiseta {
  // Atributos de Instância.
  String? tamanho;
  String? _cor;
  String? marca;

  // Atributo de classse.

  static const String nome = 'Camiseta'; // Se for alterada, será alterada
  // para todo canto que você for chama-la.
  // Sempre que possível faça variáveis que não pode ser mudadas para que não
  // ocorra erros em classes, sendo estáticas e constantes.

  // Método de classe (Que são funções dentro de classes).
  static String recuperarNome() => nome;

  /* 1 */ String get cor {
    return _cor ?? 'Sem cor definida';
  }

  // usamos o set para modificar o que precisamos, mas também podemos
  // usar funções normais sem citar get e set.
  /* 1 */ set cor(String novacor) {
    if (novacor.isNotEmpty) {
      _cor = novacor;
    }
  }
}
