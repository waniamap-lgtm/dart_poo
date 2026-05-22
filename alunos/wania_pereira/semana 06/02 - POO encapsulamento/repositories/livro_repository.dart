import '../service/db.dart';
import '../model/livro_model.dart';

class LivroRepositorio {
  // REGRA: Só o repository enxerga o DB. Instanciamos ele aqui dentro de forma privada.
  final Db _bancoDeDados = Db();

  // Método que busca os dados e converte em uma lista de objetos (Entidades)
  List<LivroModel> obterLivros() {
    // 1. Pega a lista de mapas brutos do banco
    final dadosBrutos = _bancoDeDados.buscarDadosBrutos();
    
    // 2. Cria uma lista vazia para guardar os livros convertidos
    List<LivroModel> listaConvertida = [];

    // 3. Loop simples para converter cada Map em um objeto LivroModel
    for (var item in dadosBrutos) {
      listaConvertida.add(
        LivroModel(
          titulo: item['titulo'],
          autor: item['autor'] ?? 'Autor Desconhecido', // Evita quebra se o campo for diferente
          preco: item['preco'],
        ),
      );
    }

    // REGRA: Devolve as entidades (classes) prontas para quem chamou
    return listaConvertida;
  }
}