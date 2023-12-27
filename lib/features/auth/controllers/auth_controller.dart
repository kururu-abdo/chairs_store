import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  final pageController = PageController();

  int currentPage = 0;

changePage(int page){
  currentPage =page;
pageController.jumpToPage(page);


  notifyListeners();
}

}