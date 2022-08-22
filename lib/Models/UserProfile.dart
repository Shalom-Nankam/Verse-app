class UserProfile {
  String? username;
  String? name;

  String? gender;
  String? phoneNumber;
  String? location;
  String? birthday;
  String? seeProfile;
  String? avatar;

  static final UserProfile _instance = UserProfile._internal();
  UserProfile._internal();

  factory UserProfile.fromJson(Map<String, String> json) {
       _instance.username = json['Username'];
        _instance.name = json['Name'];
        _instance.gender = json['Gender'];
        _instance.phoneNumber = json['Phone Number'];
        _instance.location = json['Location'];
        _instance.birthday = json['Birthday'];
        _instance.seeProfile = json['See Profile'];
        _instance.avatar = json['Avatar'];

        return _instance;
  }

  Map<String, Object?> toJson() {
    final Map<String, String?> items = {};
    items['Username'] = _instance.username;
    items['Name'] = _instance.name;

    items['Gender'] = _instance.gender;
    items['Phone Number'] = _instance.phoneNumber;
    items['Location'] = _instance.location;
    items['Birthday'] = _instance.birthday;
    items['See Profile'] = _instance.seeProfile;
    items['Avatar'] = _instance.avatar;

    return items;
  }
}
