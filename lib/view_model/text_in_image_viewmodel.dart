import 'package:flutter/material.dart';

class TextInImageViewModel extends ChangeNotifier {
  String _text = "Hello, Flutter!";
  String get text => _text;

  void updateText(String newText) {
    _text = newText;
    notifyListeners();
  }

  // You can also use an image URL or asset
  String _imageUrl = 'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';  // Replace with your image URL
  String get imageUrl => _imageUrl;

  void updateImage(String newImageUrl) {
    _imageUrl = newImageUrl;
    notifyListeners();
  }
}
