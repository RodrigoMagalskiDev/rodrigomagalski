import 'package:flutter/material.dart';

extension ScreenSizeHelper on BuildContext {
  double w(double percent) {
    assert(percent >= 0 && percent <= 1, 'Percentual deve ser entre 0 e 1');
    return MediaQuery.of(this).size.width * percent;
  }

  double h(double percent) {
    assert(percent >= 0 && percent <= 1, 'Percentual deve ser entre 0 e 1');
    return MediaQuery.of(this).size.height * percent;
  }
}
