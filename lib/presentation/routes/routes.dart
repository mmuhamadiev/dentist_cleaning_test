import 'package:dentist_cleeaning/presentation/pages/location/view/location_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    name: '/',
    path: '/',
    builder: (context, state) => const LocationPage(),
  ),
  // GoRoute(
  //     name: '/user_test_result',
  //     path: '/user_test_result/:userID/:resultID',
  //     builder: (context, state) => UserAnalizTestView(userID: state.pathParameters['userID']?? '', resultID: state.pathParameters['resultID']?? '')
  // ),

]
);
