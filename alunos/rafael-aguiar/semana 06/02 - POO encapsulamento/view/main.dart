import '../view_model/livro_viewmodel.dart';

void main() {
  //*Nesse exemplo a Main representa nossa tela.
  final viewModel = LivroViewmodel(); //* Instanciando a ViewModel

  final lista = viewModel.buscarLivros(); //* Buscando a lista de livros

  lista.forEach((livro) {
    //*Interando sobre a lista para a saida formatada
    print(
      //* o \n serve pra pular linha, \n\n pula duas linhas e assim por diante
      "\nTITULO: ${livro.titulo} | AUTOR: ${livro.autor} | GENERO: ${livro.genero} | ANO DE PUBLICAÇÃO: ${livro.anoPublicacao} | PÁGINAS: ${livro.paginas}",
    );
  });
}
