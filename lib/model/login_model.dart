// class LoginModel {
//   String? accessToken;
//
//   LoginModel.LoginModel({
//     this.accessToken,
//   });
//
//   LoginModel.fromJson(Map<String, dynamic> json) {
//     accessToken = json['accessToken'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['accessToken'] = this.accessToken;
//     return data;
//   }
// }
class LoginModel {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? country;

  LoginModel({
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.country,
  });

  LoginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phoneNumber'] = this.phoneNumber;
    data['country'] = this.country;
    return data;
  }
}
