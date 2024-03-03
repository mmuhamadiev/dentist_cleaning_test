import 'package:dentist_cleeaning/data/di/locator.dart';
import 'package:dentist_cleeaning/presentation/pages/location/manager/location_cubit.dart';
import 'package:dentist_cleeaning/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupConfiguration();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late LocationCubit _locationCubit;

  @override
  void initState() {
    _locationCubit = getIt<LocationCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => _locationCubit,),
        ],
        child: MaterialApp.router(
          title: 'Dentist Test',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(
                  color: Color(0xFF5EA5CB),
                  width: 0.5
                )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(
                  color: Color(0xFF99BFD4),
                  width: 0.5
                )
              ),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF99BFD4)),
            useMaterial3: true,
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
