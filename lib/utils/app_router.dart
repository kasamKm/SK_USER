import 'package:auto_route/auto_route.dart';



import 'app_router.gr.dart';



@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    /// routes go here
    CustomRoute(page: SplashRoute.page, initial: true),
    CustomRoute(
      page: LoginRoute.page,
    ),
    CustomRoute(
      page: RegisterRoute.page,
    ),
    CustomRoute(
        page: DashBoardRoute.page,
        //initial: true,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        children: [
          // CustomRoute(
          //     page: HomeSRoute.page,
          //     transitionsBuilder: TransitionsBuilders.fadeIn,
          //     durationInMilliseconds: 400,
          //     children: [
          //       CustomRoute(
          //           page: HomeRoute.page,
          //           initial: true,
          //           transitionsBuilder: TransitionsBuilders.fadeIn,
          //           durationInMilliseconds: 400),
          //
          //     ]),
          CustomRoute(
              page: HomeRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              durationInMilliseconds: 400),
          CustomRoute(
              page: HistoryRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              durationInMilliseconds: 400,
              ),
          CustomRoute(
            page: BalanceRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 400,
          ),
          CustomRoute(
            page: ProfileRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 400,
          ),


        ]),
    CustomRoute(
      page: TakingDetailsRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    // CustomRoute(
    //     page: ChatPageRoute.page, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 400),
    //
    // CustomRoute(
    //     page: CreateAccount.page, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 400),
  ];
}


