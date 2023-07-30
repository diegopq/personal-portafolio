import 'package:personal_portfolio/app/app.dart';
import 'package:personal_portfolio/app/core/utils/utils.dart';
import 'package:personal_portfolio/bootstrap.dart';

void main() {
  bootstrap(
    () => const Root(
      flavor: Flavor.staging,
    ),
  );
}
