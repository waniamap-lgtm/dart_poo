// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../model/livro_model.dart';
import '../repositories/livro_repository.dart';

class LivroViewmodel {
  //*ViewModel, a camada que vai receber dados do repository e dirá para tela se tem que mostrar dados, erro, loading e coisas assim
  final _respoitory =
      LivroRepository(); //* Repository como privada para que a tela (main) não enxergue ela

  List<LivroModel> buscarLivros() {
    return _respoitory.buscarLivros();
  }
}
