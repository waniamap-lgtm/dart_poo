// Este arquivo define o molde do nosso objeto (Entidade)
class LivroModel {
  final String titulo;
  final String autor;
  final double preco;

  // Construtor simples para inicializar os dados do livro
  LivroModel({
    required this.titulo,
    required this.autor,
    required this.preco,
  });
}
