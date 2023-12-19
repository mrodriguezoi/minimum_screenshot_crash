import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  late FlutterDriver driver;
  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });
  tearDownAll(() async {
    await driver.close();
  });
  test("Minimum test", () async {
    List<int> screenshot = await driver.screenshot();
    print(screenshot);
  });
}
