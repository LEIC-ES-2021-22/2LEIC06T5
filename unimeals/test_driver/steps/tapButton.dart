import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric TapButton() {
  return when1<String,FlutterWorld>("I tap the <string> back button", (key, context) async {
    final locator = find.byValueKey(key);
    await FlutterDriverUtils.tap(context.world.driver, locator);
  });
}