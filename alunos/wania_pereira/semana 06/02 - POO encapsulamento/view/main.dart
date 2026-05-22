// main.dart

// CORREÇÃO: Adicionado o '_' no nome da pasta e o ';' que estava faltando no final!
import '../view_model/livro_viewmodel.dart'; 

void main() {
  // REGRA DO DESAFIO: A main só enxerga a viewModel.
  final LivroViewModel viewModel = LivroViewModel();

  // Chamamos o método da ViewModel para buscar a lista de livros pronta
  final listaDeLivros = viewModel.buscarLivrosParaTela();

  // Início da formatação amigável no console
  print('====================================');
  print('       CATÁLOGO DA LIVRARIA         ');
  print('====================================\n');

  // REGRA DO DESAFIO: Saída contendo todos os dados do livro de forma amigável
  for (var livro in listaDeLivros) {
    print('📖 Livro:   ${livro.titulo}');
    print('✍️ Autor:   ${livro.autor}');
    print('💰 Preço:   R\$ ${livro.preco.toStringAsFixed(2)}'); 
    print('------------------------------------');
  }
  
  print('======= FIM DO CATÁLOGO ========');
}