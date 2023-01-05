import 'package:flutter/material.dart';
import 'package:flutter_tech_test/flutter_test_app.dart';

import 'binding/global_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GlobalBindings().dependencies();
  runApp(const FlutterTestApp());
}

