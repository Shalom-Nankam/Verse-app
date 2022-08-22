class UserProfile {
  String? username;
  String? name;

  String? gender;
  String? phoneNumber;
  String? location;
  String? birthday;
  String? seeProfile;
  String? avatar;

  UserProfile(
      {required this.username,
      required this.name,
      required this.gender,
      required this.phoneNumber,
      required this.location,
      required this.birthday,
      required this.seeProfile,
      required this.avatar});

  factory UserProfile.fromJson(Map<String, String> json) {
    return UserProfile(
        username: json['Username'],
        name: json['Name'],
        gender: json['Gender'],
        phoneNumber: json['Phone Number'],
        location: json['Location'],
        birthday: json['Birthday'],
        seeProfile: json['See Profile'],
        avatar: json['Avatar']);
  }

  Map<String, Object?> toJson() {
    final Map<String, String?> items = {};
    items['Username'] = username;
    items['Name'] = name;

    items['Gender'] = gender;
    items['Phone Number'] = phoneNumber;
    items['Location'] = location;
    items['Birthday'] = birthday;
    items['See Profile'] = seeProfile;
    items['Avatar'] = avatar;

    return items;
  }
}
