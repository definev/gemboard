import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  Timer? _timer;

  void run(VoidCallback action, Duration duration) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }

  void cancel() {
    _timer?.cancel();
  }
}
