class Tenis {
  String? marca;
  String? cor;
  double? preco;

  String retorneMarca(String? marca) => marca ?? 'Tenis sem marca';

  double? retornePreco(double? preco) {
    return preco;
  }

  String? retorneCor(String? cor) {
    return cor;
  }
}
