import 'question.dart';

class AppBrain {
int _questionNum = 0;

  List<Question> _questionGroup = [
    Question(
        q: 'عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب',
        i: 'images/image-1.jpg',
        a: true),
    Question(q: 'القطط هي حيوانات لاحمة', i: 'images/image-2.jpg', a: true),
    Question(
        q: 'الصين موجودة في القارة الافريقية',
        i: 'images/image-3.jpg',
        a: false),
    Question(q: 'الأرض مسطحة و ليست كروية', i: 'images/image-4.jpg', a: false),
    Question(
        q: 'بإستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم',
        i: 'images/image-5.jpg',
        a: true),
    Question(
        q: 'الشمس تدور حول الأرض والأرض تدور حول القمر',
        i: 'images/image-6.jpg',
        a: false),
    Question(q: 'الحيوانات لا تشعر بالألم', i: 'images/image-7.jpg', a: false),
  ];

void nextQuestion(){
  if (_questionNum < _questionGroup.length - 1){
    _questionNum ++;
  }
}

  String getQuestionText() {
    return _questionGroup[_questionNum].questionText;
  }

  String getQuestionImg() {
    return _questionGroup[_questionNum].questionImg;
  }

  bool getQuestionAnswer() {
    return _questionGroup[_questionNum].questionAnswer;
  }

  bool isFinished(){
    if (_questionNum >= _questionGroup.length -1 ){
      return true;
    }else {
      return false;
    }
  }

  void reset()
  {
    _questionNum =0;
  }
}
