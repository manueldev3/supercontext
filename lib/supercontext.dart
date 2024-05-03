library supercontext;

import 'package:flutter/widgets.dart';

/// Null Checker
extension NullChecker on dynamic {
  /// Returns [true] if null
  bool get isNull => this == null;

  /// REturns [true] if not null
  bool get isNotNull => this != null;
}

/// Context Extras
extension ContextExtras on BuildContext {
  /// Returns [MediaQueryData] properties
  MediaQueryData get media => MediaQuery.of(this);

  /// Returns a [double] Size Widget with the width and height of the screen
  Size get mediaSize => MediaQuery.of(this).size;
}
