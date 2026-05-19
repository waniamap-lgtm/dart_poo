void main() {
  /*
   * 1 percorro minha lista com a função map 
   * 2 para cada item da lista transformo em Aluno via construtor nomeado
   * 3 transformo todo o retorno do .map em lista via toList()
   * 4 percorro minha lista de objeto via forEach para imprimir o nome de cada aluno
  */
  final listaConvertida = alunos.map((e) => Aluno.fromMap(e)).toList();

  //* 4 percorro minha lista de objeto via forEach para imprimir o nome de cada aluno

  listaConvertida.forEach((element) => print(element.name));
}

class Aluno {
  final int id;
  final String name;
  final String?
  phone; //* Como o telefone pode vir nulo deixei nullable a variavel

  //*Construtor nomeado que recebe um Map e transforma em Aluno
  Aluno.fromMap(Map map)
    : id = map['id'],
      name = map['nome'],
      phone = map['telefone'];
}

List<Map<String, dynamic>> alunos = [
  {"id": 98523488, "nome": "João da Silva", "telefone": null},
  {"id": 98523489, "nome": "Lucas Evangelista", "telefone": '11996541236'},
  {"id": 98523490, "nome": "Maria Teodoro", "telefone": '11944551236'},
  {"id": 98523491, "nome": "Isabel Santos", "telefone": null},
];
