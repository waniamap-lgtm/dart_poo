// Simulação do nosso Banco de Dados local
class Db {
  // Retorna uma lista de mapas (dados brutos como vêm de um banco real)
  List<Map<String, dynamic>> buscarDadosBrutos() {
    return [
      {'titulo': 'Dom Casmurro', 'autor': 'Machado de Assis', 'preco': 29.90},
      {'titulo': 'O Alquimista', 'author': 'Paulo Coelho', 'preco': 39.90},
    ];
  }
}