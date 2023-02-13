import 'dart:io';
import 'dart:math';

//Exercício 1

void main() {
  int A, B, C, D;

  stdout.write("Insira o valor de A: ");
  A = int.parse(stdin.readLineSync()!);
  stdout.write("Insira o valor de B: ");
  B = int.parse(stdin.readLineSync()!);
  stdout.write("Insira o valor de C: ");
  C = int.parse(stdin.readLineSync()!);
  stdout.write("Insira o valor de D: ");
  D = int.parse(stdin.readLineSync()!);

  if (B > C && D > A && C + D > A + B && C > 0 && D > 0 && A % 2 == 0) {
    print("Valores aceitos");
  } else {
    print("Valores não aceitos");
  }

//Exercício 2°
  double nota1, nota2, nota3, nota4, media, mediaFinal, notaRecuperacao;
  stdout.write('1ª NOTA = ');
  nota1 = double.parse(stdin.readLineSync()!);

  stdout.write('2ª NOTA = ');
  nota2 = double.parse(stdin.readLineSync()!);

  stdout.write('3ª NOTA = ');
  nota3 = double.parse(stdin.readLineSync()!);

  stdout.write('4ª NOTA = ');
  nota4 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2 + nota3 + nota4) / 4;

  print('MÉDIA = ' + media.toString());

  if (media >= 7.0)
    print('APROVADO | SEM RECUPERAÇÃO');
  else if (media >= 5.0) {
    stdout.write('NOTA DA RECUPERAÇÃO = ');
    notaRecuperacao = double.parse(stdin.readLineSync()!);
    mediaFinal = (notaRecuperacao + media) / 2;
    if (mediaFinal >= 5.0) {
      print('APROVADO | FINAL');
    } else {
      print('REPROVADO | FINAL');
    }
  } else {
    print('REPROVADO');
  }
  //Exercício 3°

  List<double> sides = [];

  for (int i = 0; i < 3; i++) {
    print("Digite o valor do lado $i:");
    var input = double.tryParse(stdin.readLineSync()!);
    sides.add(input!);
  }

  sides.sort((a, b) => b.compareTo(a));

  var a = sides[0];
  var b = sides[1];
  var c = sides[2];

  if (a >= b + c) {
    print("Não forma triângulo");
  } else {
    if (pow(a, 2) == pow(b, 2) + pow(c, 2)) {
      print("Triângulo retângulo");
    } else if (pow(a, 2) > pow(b, 2) + pow(c, 2)) {
      print("Triângulo obtusângulo");
    } else if (pow(a, 2) < pow(b, 2) + pow(c, 2)) {
      print("Triângulo acutângulo");
    }

    if (a == b && b == c) {
      print("Triângulo equilátero");
    } else if (a == b || b == c || a == c) {
      print("Triângulo isósceles");
    }
  }

//Exercício 4

  print("Jogador 1, escolha entre par ou Ímpar:");
  var player1Choice = stdin.readLineSync();

  print("Jogador 1 escolheu $player1Choice. Agora é a vez do jogador 2.");
  print("Jogador 2, digite um número :");

  var player2NumberString = stdin.readLineSync();
  var player2Number = int.tryParse(player2NumberString!);
  print("Jogador 1 escolha seu número :");
  var player1NumberString = stdin.readLineSync();
  var player1Number = int.tryParse(player1NumberString!);

  var sum = player1Number! + player2Number!;
  var result = sum % 2 == 0 ? "Par" : "Ímpar";

  if (result == player1Choice) {
    print("A soma dos números é $sum, que é $result. Jogador 1 ganha!");
  } else {
    print("A soma dos números é $sum, que é $result. Jogador 2 ganha!");
  }
}