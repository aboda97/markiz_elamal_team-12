import 'dart:isolate';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiz_elamal_team_12/core/api/api_manager.dart';
import 'package:markiz_elamal_team_12/core/api/end_points.dart';
import 'package:markiz_elamal_team_12/core/api/error.dart';
import 'package:markiz_elamal_team_12/features/edit_profile_feature/models/PatientProfileResponse.dart';
import 'package:markiz_elamal_team_12/features/edit_profile_feature/models/UpdateProfileResponse.dart';
import 'package:meta/meta.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileInitial());

  static EditProfileCubit get(context) => BlocProvider.of(context);

  void getProfileData(String id) async {
    emit(GetProfileDataLoadingState());
    try {
      var response =
          await ApiManager.getData("${EndPoints.getPatientProfile}$id");
      PatientProfileResponse patientProfileResponse =
          PatientProfileResponse.fromJson(response);
      emit(GetProfileDataSuccessState(patientProfileResponse));
    } catch (e) {
      print(e.toString());
      emit(GetProfileDataErrorState(RemoteFailures(e.toString())));
    }
  }

  void upDateProfile({required String id, required Map<String, dynamic> data})async {

      emit(UpDateProfileDataLoadingState());
      print("lllllllllllllllllllllllllllllllllll");
      var response = await ApiManager.putData("${EndPoints.upDateProfile}$id", data);
      UpdateProfileResponse updateProfileResponse =
          UpdateProfileResponse.fromJson(response);
      emit(UpDateProfileDataSuccessState(updateProfileResponse));}


}
