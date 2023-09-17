// ignore: unused_import
import 'question.dart';

class AppBarin {
  int _questionNumber = 0;
  final List<Question> _questionGroup = [
    Question(
      q: 'هل تشرق الشمس في الشرق؟',
      i: 'images/1.jpg',
      a: true,
    ),
    Question(
      q: 'هل يغلي الماء عند درجة حرارة 100 درجة مئوية؟',
      i: 'images/2.jpg',
      a: true,
    ),
    Question(
      q: 'هل الأرض مسطحة؟',
      i: 'images/3.jpg',
      a: false,
    ),
    Question(
      q: 'هل البطاريق يستطيعون الطيران؟',
      i: 'images/4.jpg',
      a: false,
    ),
    Question(
      q: 'هل يقع تمثال الحرية في باريس؟',
      i: 'images/5.jpg',
      a: false,
    ),
    Question(
      q: 'هل يتم صنع الماس من الفحم المضغوط؟',
      i: 'images/6.jpg',
      a: false,
    ),
    Question(
      q: 'هل سور الصين العظيم يمكن رؤيته من الفضاء؟',
      i: 'images/7.jpg',
      a: false,
    ),
    Question(
      q: 'هل جبل إيفرست هو أعلى جبل في العالم؟',
      i: 'images/8.jpg',
      a: true,
    ),
    Question(
      q: 'هل جسم الإنسان يحتوي على 206 عظمة؟',
      i: 'images/9.jpg',
      a: true,
    ),
    Question(
      q: 'هل عاصمة أستراليا هي سيدني',
      i: 'images/10.jpg',
      a: true,
    ),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionGroup[_questionNumber].questionText;
  }

  String getQuestionImage() {
    return _questionGroup[_questionNumber].questionImage;
  }

  bool getQuestionAnswer() {
    return _questionGroup[_questionNumber].questionAnswer;
  }
}
