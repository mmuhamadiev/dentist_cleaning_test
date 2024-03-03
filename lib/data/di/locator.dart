import 'package:dentist_cleeaning/presentation/pages/location/manager/location_cubit.dart';
import 'package:logger/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
final logger = Logger(
  printer: PrettyPrinter(),
);

setupConfiguration() async {


  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);


  getIt.registerFactory<LocationCubit>(() => LocationCubit());

}