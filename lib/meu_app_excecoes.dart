import 'dart:convert';
import 'dart:io';

import 'package:meu_app_excecoes/exception/nome_invalido_exception.dart';
import 'package:meu_app_excecoes/models/aluno.dart';
import 'package:meu_app_excecoes/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas");

  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome padrão";
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double? nota;
  var aluno = Aluno(nome);

  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        'Digite a nota ou s para sair', "s");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);

  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do aluno foi: ${aluno.retornaMedia()}");

  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} foi aprovado");
  } else {
    print("O aluno ${aluno.getNome()} foi reprovado");
  }
}
