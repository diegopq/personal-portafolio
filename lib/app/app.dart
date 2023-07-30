import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:personal_portfolio/l10n/l10n.dart';
import 'package:personal_portfolio/app/core/utils/utils.dart';
import 'package:personal_portfolio/app/core/routes/router.dart';
import 'package:personal_portfolio/app/core/core_presentation/global_widgets/global_widgets.dart';

class Root extends StatelessWidget {
  const Root({
    super.key,
    this.flavor = Flavor.production,
  });

  final Flavor flavor;

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      flavor: flavor,
      child: _App(),
    );
  }
}

class _App extends StatelessWidget {
  _App();

  final botToastBuilder = BotToastInit();
  final appRouter = AppRouter(
    navigationObservers: [
      BotToastNavigatorObserver(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Diego Padilla',
      builder: (ctx, child) {
        ScreenUtil.init(
          ctx,
          minTextAdapt: true,
          designSize: const Size(390, 844),
        );
        return botToastBuilder(ctx, child);
      },
    );
  }
}
