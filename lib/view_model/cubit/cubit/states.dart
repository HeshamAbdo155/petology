import 'package:petology/model/login_model.dart';

abstract class PetologyStates {}

class PetologyInitialState extends PetologyStates {}

class AppBarState extends PetologyStates {}

class PetologyLoginSuccessState extends PetologyStates {
  final LoginModel loginModel;

  PetologyLoginSuccessState(this.loginModel);
}

class PetologyLoginErrorState extends PetologyStates {
  final String error;

  PetologyLoginErrorState(this.error);
}
class RegisterSuccessState extends PetologyStates {
  final LoginModel loginModel;

  RegisterSuccessState(this.loginModel);
}

class RegisterErrorState extends PetologyStates {
  final String error;

  RegisterErrorState(this.error);
}
class RequestGetSuccessState extends PetologyStates {
  RequestGetSuccessState();
}

class RequestGetErrorState extends PetologyStates {
  final String error;

  RequestGetErrorState(this.error);
}