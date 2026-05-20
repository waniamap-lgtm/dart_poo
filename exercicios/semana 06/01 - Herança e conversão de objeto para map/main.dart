void main() {
  final map = {
    "paciente": "João da Silva",
    "medico": "Dra. Maria Oliveira",
    "exames": ["Hemograma", "Glicemia"], //! Isso não é uma entidade
    "data": "2026-05-17", //? Só converta para data se realmente for preciso
  };

  final pedido = PedidoDeExameModel.fromMap(map);

  print(pedido.paciente);

  //* 1. Crie uma abstração para a entidade acima (abstract) - ok
  //* 2. Crie uma classe de modelo que herde da sua abstração - ok
  //* 3. na classe de modelo implemente um construtor para transformar de map em classe - ok
  //* 4. na classe modelo crie um método que vai trasnformar a instancia atual em map
}

abstract class PedidoDeExame {
  //Classe abstrata
  final String paciente;
  final String medico;
  final List<String> exames;
  final String data;
  PedidoDeExame({
    required this.paciente,
    required this.medico,
    required this.exames,
    required this.data,
  });
}

final class PedidoDeExameModel extends PedidoDeExame {
  PedidoDeExameModel.fromMap(Map map) //Construtor nomeado
    : super(
        paciente: map['paciente'],
        medico: map['medico'],
        exames: map['exames'],
        data: map['data'],
      );

  Map<String, dynamic> toMap() {
    //Função para transformar em Map
    return {
      "paciente": this.paciente,
      "medico": this.medico,
      "exames": this.exames,
      "data": this.data,
    };
  }
}
