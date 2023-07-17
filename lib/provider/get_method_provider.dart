// class GetMethodProvider {
//   GetMethodProvider({
//     Data? data,
//   }) {
//     _data = data;
//   }
//
//
//   GetMethodProvider.fromJson(dynamic json) {
//     _data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }
//
//   Data? _data;
//
//   Data? get data => _data;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['data'] = _data?.toJson();
//     return map;
//   }
// }
//
//
// class Data {
//   Data({
//     required this.id,
//     required this.email,
//     required this.firstName,
//     required this.lastName,
//     required this.avatar,
//   });
//
//   int id;
//   String email;
//   String firstName;
//   String lastName;
//   String avatar;
//
//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//     id: json["id"],
//     email: json["email"],
//     firstName: json["first_name"],
//     lastName: json["last_name"],
//     avatar: json["avatar"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "email": email,
//     "first_name": firstName,
//     "last_name": lastName,
//     "avatar": avatar,
//   };
// }

class GetMethodProvider {
  GetMethodProvider({
    required this.data,
  });

  Data data;

  factory GetMethodProvider.fromJson(Map<String, dynamic> json) => GetMethodProvider(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}


class Data {
  Data({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}