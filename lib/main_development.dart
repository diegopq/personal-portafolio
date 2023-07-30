import 'package:personal_portfolio/app/app.dart';
import 'package:personal_portfolio/bootstrap.dart';
import 'package:personal_portfolio/app/core/utils/utils.dart';

void main() {
  bootstrap(
    () => const Root(
      flavor: Flavor.development,
    ),
  );
}
