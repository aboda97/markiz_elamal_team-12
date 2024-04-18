class PatientProfileResponse {
  PatientProfileResponse({
      this.message, 
      this.users,});

  PatientProfileResponse.fromJson(dynamic json) {
    message = json['message'];
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
  }
  String? message;
  Users? users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (users != null) {
      map['users'] = users?.toJson();
    }
    return map;
  }

}

class Users {
  Users({
      this.id, 
      this.name, 
      this.email, 
      this.password, 
      this.phone, 
      this.loggedIn, 
      this.confirmed, 
      this.customId, 
      // this.history,
      this.createdAt, 
      this.updatedAt, 
      this.v,});

  Users.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    loggedIn = json['loggedIn'];
    confirmed = json['confirmed'];
    customId = json['customId'];
    // if (json['history'] != null) {
    //   history = [];
    //   json['history'].forEach((v) {
    //     history?.add(Dynamic.fromJson(v));
    //   });
    // }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
  }
  String? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  bool? loggedIn;
  bool? confirmed;
  String? customId;
  // List<dynamic>? history;
  String? createdAt;
  String? updatedAt;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['phone'] = phone;
    map['loggedIn'] = loggedIn;
    map['confirmed'] = confirmed;
    map['customId'] = customId;
    // if (history != null) {
    //   map['history'] = history?.map((v) => v.toJson()).toList();
    // }
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    return map;
  }

}