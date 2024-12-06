import "dart:io";

List<String?> nomes = [];

main() {
  bool condicao = true;
  while (condicao) {
    print("Adicione um nome à lista");
    String? text = stdin.readLineSync();
    if (text == "finalizar") {
      print("Finalizou o programa");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
    } else if (text == "remover") {
      remover();
    } else {
      nomes.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < nomes.length; i++) {
    print("Nome $i - ${nomes[i]}");
  }
}

remover() {
  print("Qual nome deseja remover?");
  imprimir();
  int nome = int.parse(stdin.readLineSync()! );
  nomes.removeAt(nome);
  print("Nome removido coom sucesso");
}
