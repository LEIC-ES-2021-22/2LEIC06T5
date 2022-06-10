import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric GoFoward() {
  return when1<String,FlutterWorld>("I expect to be in the <string> restaurant page", (key, context) async {
    final locator = find.byValueKey(key);
    await FlutterDriverUtils.tap(context.world.driver, locator);
  });
}