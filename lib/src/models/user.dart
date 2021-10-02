import 'dart:convert';

class UserModel {
  final String id;
  final String? image;
  final String? blurHash;
  final String? phone;
  final String? displayName;
  final String? firstName;
  final String? lastName;
  final int? status;
  final String? intro;

  UserModel({
    required this.id,
    this.image,
    this.blurHash,
    this.phone,
    this.displayName,
    this.firstName,
    this.lastName,
    this.status,
    this.intro,
  });

  UserModel copyWith({
    String? id,
    String? image,
    String? blurHash,
    String? phone,
    String? displayName,
    String? firstName,
    String? lastName,
    int? status,
    String? intro,
  }) {
    return UserModel(
      id: id ?? this.id,
      image: image ?? this.image,
      blurHash: blurHash ?? this.blurHash,
      phone: phone ?? this.phone,
      displayName: displayName ?? this.displayName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      status: status ?? this.status,
      intro: intro ?? this.intro,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'blurHash': blurHash,
      'phone': phone,
      'displayName': displayName,
      'firstName': firstName,
      'lastName': lastName,
      'status': status,
      'intro': intro,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['_id'],
      image: map['image'],
      blurHash: map['blurHash'],
      phone: map['phone'],
      displayName: map['displayName'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      status: map['status'],
      intro: map['intro'] == '' ? null : map['intro'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, image: $image, blurHash: $blurHash, phone: $phone, displayName: $displayName, firstName: $firstName, lastName: $lastName, status: $status, intro: $intro)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.id == id &&
        other.image == image &&
        other.blurHash == blurHash &&
        other.phone == phone &&
        other.displayName == displayName &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.status == status &&
        other.intro == intro;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        image.hashCode ^
        blurHash.hashCode ^
        phone.hashCode ^
        displayName.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        status.hashCode ^
        intro.hashCode;
  }
}