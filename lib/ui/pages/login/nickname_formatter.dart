// Exemplo de formatter
import 'package:flutter/services.dart';

class NicknameFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var text = newValue.text;
    text = text.replaceAll('#', '');
    text = text.toUpperCase();
    text = '#$text';

    return newValue.copyWith(
        text: text,
        composing: TextRange.collapsed(text.length),
        selection: TextSelection.collapsed(offset: text.length));
  }
}
