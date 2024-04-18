class UpdateProfileResponse {
  UpdateProfileResponse({
      this.message, 
      this.updatedUser,});

  UpdateProfileResponse.fromJson(dynamic json) {
    message = json['message'];
    updatedUser = json['updatedUser'] != null ? UpdatedUser.fromJson(json['updatedUser']) : null;
  }
  String? message;
  UpdatedUser? updatedUser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (updatedUser != null) {
      map['updatedUser'] = updatedUser?.toJson();
    }
    return map;
  }

}

class UpdatedUser {
  UpdatedUser({
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

  UpdatedUser.fromJson(dynamic json) {
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
  num? v;

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