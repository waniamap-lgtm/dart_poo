import '../model/livro_model.dart';
import '../service/db.dart';

class LivroRepository {
  //*Camada responsável por transformar nossos dados que vieram do banco em modelos
  DB _db =
      DB(); //*Privado para garantir o encapsulamento, assim a viewModel não vai conseguir acessar ela

  List<LivroModel> buscarLivros() {
    final result = _db.getData();
    return result
        .map((e) => LivroModel.fromMap(e))
        .toList(); //*Transformando List<Map> em List<LivroModel>
  }
}
