import 'dart:convert';

class Robot {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  dynamic address;
  dynamic company;
  dynamic geo;
  Robot({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
    required this.geo,
  });

  Robot copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    String? phone,
    String? website,
    dynamic? address,
    dynamic? company,
    dynamic? geo,
  }) {
    return Robot(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      address: address ?? this.address,
      company: company ?? this.company,
      geo: geo ?? this.geo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'website': website,
      'address': address,
      'company': company,
      'geo': geo,
    };
  }

  factory Robot.fromMap(Map<String, dynamic> map) {
    return Robot(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      website: map['website'] ?? '',
      address: map['address'] ?? null,
      company: map['company'] ?? null,
      geo: map['geo'] ?? null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Robot.fromJson(String source) => Robot.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Robot(id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website, address: $address, company: $company, geo: $geo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Robot &&
        other.id == id &&
        other.name == name &&
        other.username == username &&
        other.email == email &&
        other.phone == phone &&
        other.website == website &&
        other.address == address &&
        other.company == company &&
        other.geo == geo;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        username.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        website.hashCode ^
        address.hashCode ^
        company.hashCode ^
        geo.hashCode;
  }
}
