class UpDateProfileRequest {
  String? name;
  String? phone;
  String? image;

  UpDateProfileRequest({this.name, this.phone, this.image});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "phone": phone,
      // "image": image,
    };
  }
}
