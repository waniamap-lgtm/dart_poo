import '../repositories/livro_repository.dart';
import '../model/livro_model.dart';

class LivroViewModel {
  // REGRA: Só a viewModel enxerga o repository. Criamos ele aqui dentro de forma privada.
  final LivroRepositorio _repositorio = LivroRepositorio();

  // Método simples que a main vai chamar para pegar os dados prontos
  List<LivroModel> buscarLivrosParaTela() {
    // A viewModel pede os dados para o repositório e repassa para a main
    return _repositorio.obterLivros();
  }
}