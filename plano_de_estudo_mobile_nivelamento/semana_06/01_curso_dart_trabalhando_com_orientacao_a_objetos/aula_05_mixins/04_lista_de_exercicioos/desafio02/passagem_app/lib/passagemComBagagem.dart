import 'package:passagem_app/passagem.dart';
import 'package:passagem_app/taxaBagagem.dart';

class PassagemComBagagem extends Passagem with TaxaBagagem {
  PassagemComBagagem(super.cliente, super.valorBase);

  @override
  double calcularPrecoFinal() {
    // TODO: implement calcularPrecoFinal
    double precoFinal = valorBase + calcularTaxa(valorBase);
    return precoFinal;
  }
}
