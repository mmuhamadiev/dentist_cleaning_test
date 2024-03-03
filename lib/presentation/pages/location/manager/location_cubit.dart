import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {

  TextEditingController cityTextController = TextEditingController();
  TextEditingController streetTextController = TextEditingController();
  TextEditingController address1TextController = TextEditingController();
  TextEditingController address2TextController = TextEditingController();
  TextEditingController address3TextController = TextEditingController();
  TextEditingController address4TextController = TextEditingController();

  LocationCubit() : super(LocationState(''));

  void validate(String error) {
    emit(LocationState(error));
  }

}
