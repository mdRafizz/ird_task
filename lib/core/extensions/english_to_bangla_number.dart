extension EnglishNumberToBangla on String {
  String toBanglaNumber() {
    Map<String, String> engToBan = {
      '0': '০',
      '1': '১',
      '2': '২',
      '3': '৩',
      '4': '৪',
      '5': '৫',
      '6': '৬',
      '7': '৭',
      '8': '৮',
      '9': '৯',
    };

    String banglaNumber = '';
    for (int i = 0; i < length; i++) {
      banglaNumber += engToBan[this[i]] ?? this[i];
    }
    return banglaNumber;
  }
}