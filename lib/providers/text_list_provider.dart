import 'package:flutter/cupertino.dart';

class TextBoxProvider extends ChangeNotifier {
  List<TextEditingController> _controllers = [];

  List<TextEditingController> get controllers => _controllers;

  // Add or remove text boxes
  void addTextBox(int count) {
    if (_controllers.length < count) {
      // Add new controllers if there are fewer than required
      for (int i = _controllers.length; i < count; i++) {
        _controllers.add(TextEditingController());
      }
    } else if (_controllers.length > count) {
      // Remove extra controllers
      _controllers = _controllers.sublist(0, count);
    }
    notifyListeners();
  }

  // Update the value of a specific text box
  void updateTextBox(int index, String value) {
    if (index >= 0 && index < _controllers.length) {
      _controllers[index].text = value;
      _controllers[index].selection = TextSelection.fromPosition(TextPosition(offset: _controllers[index].text.length)); // Keep cursor at the end
      notifyListeners();
    }
  }
}
