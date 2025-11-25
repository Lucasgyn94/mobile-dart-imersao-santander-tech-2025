abstract class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir();
}

class Relatorio extends Documento {

  Relatorio(super.nomeDoDocumento);

  @override
  void imprimir() {
    // TODO: implement imprimir
    print('O $nomeDoDocumento foi enviado para impressão');
  }
}

void main() {
  String nomeDoDocumento = "Documento 1";
  Relatorio relatorio = Relatorio(nomeDoDocumento);
  relatorio.imprimir();
}
