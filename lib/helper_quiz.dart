import 'package:ausculta/perguntas.dart';

class Helper{

  int _numeroQuestaoAtual = 0;

  final List<Perguntas> _bancoPerguntas = [
    Perguntas (
        '1- Este som é um som broncovesicular?',
        true,
        'sombroncovesicular.mp3'),
    Perguntas(
        '2- Este som é um som bronquico?',
        true,
        'sombronquico.mp3'),

    Perguntas(
        '3- Este som é um som estertor fino?',
        false,
        'estertores grosso.mp3'),

    Perguntas(
        '4- Este som é um som ronco?',
        true,
        'ronco1.mp3'),

    Perguntas(
        '5- Este som é um som vesicular?',
        true,
        'vesicular.mp3'),

    Perguntas(
        '6- Este som é um som murmurio vesicular?',
        false,
        'sibilos4.mp3'),

    Perguntas(
        '7- Este som é um som estertor grosso?',
        false,
        'estertor fino.mp3'),

    Perguntas(
        '8- Este som é um som sibilo?',
        true,
        'sibilos.mp3'),

    Perguntas(
        '9- Este som é um som vesicular?',
        false,
        'estridor.mp3'),

    Perguntas(
        '10- Este som é um som ronco?',
        true,
        'roncos2.mp3'),

  ];

  void proximaPergunta(){
    if(_numeroQuestaoAtual < _bancoPerguntas.length - 1){
      _numeroQuestaoAtual++;
    }else{

    }
  }

  confereFimDaExecucao() {
    if (_numeroQuestaoAtual >= _bancoPerguntas.length - 1) {
      //print('Chegou na última pergunta do quiz');
      return true;
    } else {
      return false;
    }
  }

  resetarQuiz() {
    _numeroQuestaoAtual = 0;
  }


  String obterQuestao (){
    return _bancoPerguntas[_numeroQuestaoAtual].questao;
  }

  String obterSom (){
    return _bancoPerguntas[_numeroQuestaoAtual].som;
  }

  bool obterResposta(){
    return _bancoPerguntas[_numeroQuestaoAtual].resposta;
  }

}