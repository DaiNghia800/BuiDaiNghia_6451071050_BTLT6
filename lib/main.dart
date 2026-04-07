import 'package:flutter/material.dart';
import 'bai1/apps/app.dart' as bai1;
import 'bai2/apps/app.dart' as bai2;
import 'bai3/apps/app.dart' as bai3;

const int currentBai = 3;

void main() {
  Widget app;

  switch (currentBai) {
    case 1:
      app = const bai1.Bai1App();
      break;
    case 2:
      app = const bai2.Bai2App();
      break;
    case 3:
      app = const bai3.Bai3App();
      break;
    default:
      app = const bai1.Bai1App();
  }

  runApp(app);
}