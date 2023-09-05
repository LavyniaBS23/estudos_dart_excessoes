import 'dart:convert';
import 'dart:io';

import 'package:meu_app_excecoes/meu_app_excecoes.dart' as meu_app_excecoes;

void main(List<String> arguments) {
  /*print("Sistema de notas");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double numero = double.parse(line ?? "");
    print(numero);
  } catch (e) {
    print("Número inválido: $line");
  } finally {
    print("Executando finally");
  }*/
  meu_app_excecoes.execute();
}
