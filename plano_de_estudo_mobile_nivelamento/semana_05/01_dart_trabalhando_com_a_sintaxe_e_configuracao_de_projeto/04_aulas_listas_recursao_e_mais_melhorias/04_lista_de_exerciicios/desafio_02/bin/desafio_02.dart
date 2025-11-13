import 'dart:io';

void main() {
  validarTipoArquivo();
}

void validarTipoArquivo() {
  List<String> tiposArquivos = <String>["pdf", "jpg", "png", "docx"];
  print("Digite o tipo de arquivo a ser enviado: ${tiposArquivos.toString()}");
  String? entrada = stdin.readLineSync();

  if (tiposArquivos.contains(entrada)) {
    print("Arquivo $entrada permitido!");
  } else {
    print("Arquivo $entrada não permitido");
    validarTipoArquivo();
  }
}

/*
2) Validação de tipos de arquivos em um sistema de upload
Você está desenvolvendo um sistema de upload de arquivos que aceita apenas tipos específicos como pdf, jpg, png e docx. Crie uma função que solicite à pessoa usuária o tipo de arquivo a ser enviado e valide se a entrada é um tipo de arquivo permitido, solicitando novamente em caso de erro.
 */
