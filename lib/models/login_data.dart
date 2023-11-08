// To parse this JSON data, do
//
//     final loginData = loginDataFromJson(jsonString);

import 'dart:convert';

LoginData loginDataFromJson(String str) => LoginData.fromJson(json.decode(str));

String loginDataToJson(LoginData data) => json.encode(data.toJson());

class LoginData {
    String token;
    Profile profile;

    LoginData({
        required this.token,
        required this.profile,
    });

    factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        token: json["token"],
        profile: Profile.fromJson(json["profile"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "profile": profile.toJson(),
    };
}

class Profile {
    int id;
    String name;
    String email;
    String filial;
    String password;

    Profile({
        required this.id,
        required this.name,
        required this.email,
        required this.filial,
        required this.password,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        filial: json["filial"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "filial": filial,
        "password": password,
    };
}
