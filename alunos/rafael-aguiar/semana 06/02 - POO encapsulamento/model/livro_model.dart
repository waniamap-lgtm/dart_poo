class LivroModel {
  final String titulo;
  final String autor;
  final int anoPublicacao;
  final String genero;
  final int paginas;

  LivroModel.fromMap(
    Map map,
  ) //*Nesse caso só precisamos desse construtor nomeado pra converter de Map pra Model
  : titulo =
          map['titulo'], //* Lembrando que o : serve para o Dart experar a atribuição dos atributos antes de criar a classe, devido ao null safety
      autor = map['autor'],
      anoPublicacao = map['anoPublicacao'],
      genero = map['genero'],
      paginas = map['paginas'];
}
