// To parse this JSON data, do
//
//     final responseGetAllUsersRoles = responseGetAllUsersRolesFromJson(jsonString);

import 'dart:convert';

List<ResponseGetAllUsersRoles> responseGetAllUsersRolesFromJson(String str) => List<ResponseGetAllUsersRoles>.from(json.decode(str).map((x) => ResponseGetAllUsersRoles.fromJson(x)));

String responseGetAllUsersRolesToJson(List<ResponseGetAllUsersRoles> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseGetAllUsersRoles {
    ResponseGetAllUsersRoles({
        required this.id,
        required this.email,
        required this.name,
        required this.lastname,
        required this.image,
        required this.phone,
        required this.password,
        required this.notificationToken,
        required this.roles,
    });

    String id;
    String email;
    String name;
    String lastname;
    String image;
    String phone;
    String password;
    String notificationToken;
    String roles;

    ResponseGetAllUsersRoles copyWith({
        String id,
        String email,
        String name,
        String lastname,
        String image,
        String phone,
        String password,
        String notificationToken,
        String roles,
    }) => 
        ResponseGetAllUsersRoles(
            id: id ?? this.id,
            email: email ?? this.email,
            name: name ?? this.name,
            lastname: lastname ?? this.lastname,
            image: image ?? this.image,
            phone: phone ?? this.phone,
            password: password ?? this.password,
            notificationToken: notificationToken ?? this.notificationToken,
            roles: roles ?? this.roles,
        );

    factory ResponseGetAllUsersRoles.fromJson(Map<String, dynamic> json) => ResponseGetAllUsersRoles(
        id: json["id"],
        email: json["email"],
        name: json["name"],
        lastname: json["lastname"],
        image: json["image"],
        phone: json["phone"],
        password: json["password"],
        notificationToken: json["notification_token"],
        roles: json["roles"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
        "lastname": lastname,
        "image": image,
        "phone": phone,
        "password": password,
        "notification_token": notificationToken,
        "roles": roles,
    };
}
