part of 'edit_profile_cubit.dart';

@immutable
sealed class EditProfileState {}

final class EditProfileInitial extends EditProfileState {}

final class GetProfileDataLoadingState extends EditProfileState {}

final class GetProfileDataErrorState extends EditProfileState {
  Failures failures ;

  GetProfileDataErrorState(this.failures);
}

final class GetProfileDataSuccessState extends EditProfileState {
  PatientProfileResponse patientProfileResponse;

  GetProfileDataSuccessState(this.patientProfileResponse);
}

final class UpDateProfileDataLoadingState extends EditProfileState {}

final class UpDateProfileDataErrorState extends EditProfileState {
  Failures failures ;

  UpDateProfileDataErrorState(this.failures);
}

final class UpDateProfileDataSuccessState extends EditProfileState {
  UpdateProfileResponse updateProfileResponse;

  UpDateProfileDataSuccessState(this.updateProfileResponse);
}
