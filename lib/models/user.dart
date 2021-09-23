class User {
  String? company;
  Contacts? contacts;
  String email;
  String? firstName;
  int id;
  String? info;
  String? lastName;
  String? position;
  String role;
  String? sector;
  String? video;
  int wkUserId;

  User({
    this.company,
    this.contacts,
    required this.email,
    required this.firstName,
    required this.id,
    this.info,
    required this.lastName,
    this.position,
    required this.role,
    this.sector,
    this.video,
    required this.wkUserId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      company: json['company'],
      contacts: json['contacts'] != null ? Contacts.fromJson(json['contacts']) : null,
      email: json['email'],
      firstName: json['first_name'] ?? "",
      id: json['id'],
      info: json['info'],
      lastName: json['last_name'] ?? "",
      position: json['position'],
      role: json['role'],
      sector: json['sector'],
      video: json['video'],
      wkUserId: json['wk_user_id'],
    );
  }
  static List<User> userListFromJson(List<dynamic> json) {
    var userList = List<User>.empty(growable: true);
    for (Map<String, dynamic> speaker in json) userList.add(User.fromJson(speaker));
    return userList;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company'] = this.company;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['id'] = this.id;
    data['last_name'] = this.lastName;
    data['position'] = this.position;
    data['role'] = this.role;
    data['wk_user_id'] = this.wkUserId;
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.toJson();
    }
    data['info'] = this.info;
    data['sector'] = this.sector;
    data['video'] = this.video;
    return data;
  }
}

class Contacts {
  String? email;
  String? linkedin;
  String? phone;
  String? whatsApp;

  Contacts({this.email, this.linkedin, this.phone, this.whatsApp});

  factory Contacts.fromJson(Map<String, dynamic> json) {
    return Contacts(
      email: json['email'],
      linkedin: json['linkedin'],
      phone: json['phone'],
      whatsApp: json['whats_app'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['linkedin'] = this.linkedin;
    data['phone'] = this.phone;
    data['whats_app'] = this.whatsApp;
    return data;
  }
}

class ProfileEditUser extends User {
  late ExpandedContacts expandedContacts;

  ProfileEditUser(
      {firstName,
      lastName,
      company,
      contacts,
      email,
      id,
      info,
      photo,
      position,
      role,
      sector,
      videoId,
      wkUserId,
      is_share_contact_whats_app,
      is_share_contact_linkedin,
      is_share_contact_phone,
      is_share_contact_email})
      : super(
            firstName: firstName,
            lastName: lastName,
            company: company,
            contacts: contacts,
            email: email,
            id: id,
            info: info,
            position: position,
            role: role,
            sector: sector,
            video: videoId,
            wkUserId: wkUserId) {
    this.expandedContacts = contacts;
  }
  String getVideoCode() {
    if (video == null) return "";
    return video!.replaceFirst("https://www.youtube.com/watch?v=", "");
  }

  factory ProfileEditUser.fromJson(Map<String, dynamic> json) {
    return ProfileEditUser(
        company: json['company'],
        contacts: json['contacts'] != null ? ExpandedContacts.fromJson(json['contacts']) : null,
        email: json['email'],
        firstName: json['first_name'] ?? "",
        id: json['id'],
        info: json['info'],
        lastName: json['last_name'] ?? "",
        position: json['position'],
        role: json['role'],
        sector: json['sector'],
        videoId: json['video'],
        wkUserId: json['wk_user_id'],
        is_share_contact_email: json['is_share_contact_email'],
        is_share_contact_linkedin: json['is_share_contact_linkedin'],
        is_share_contact_phone: json['is_share_contact_phone'],
        is_share_contact_whats_app: json['is_share_contact_whats_app']);
  }

  Map<String, dynamic> toJson() {
    return {
      "first_name": firstName,
      "last_name": lastName,
      "video": video,
      "company": company,
      "position": position,
      "sector": sector,
      "info": info,
      "contact_whats_app": contacts!.whatsApp,
      "contact_linkedin": contacts!.linkedin,
      "contact_phone": contacts!.phone,
      "contact_email": contacts!.email,
      "is_share_contact_whats_app": expandedContacts.is_share_contact_whats_app ? 1 : 0,
      "is_share_contact_linkedin": expandedContacts.is_share_contact_linkedin ? 1 : 0,
      "is_share_contact_phone": expandedContacts.is_share_contact_phone ? 1 : 0,
      "is_share_contact_email": expandedContacts.is_share_contact_email ? 1 : 0
    };
  }
}

class ExpandedContacts extends Contacts {
  late bool is_share_contact_whats_app;
  late bool is_share_contact_linkedin;
  late bool is_share_contact_phone;
  late bool is_share_contact_email;

  ExpandedContacts(
      {email,
      linkedin,
      phone,
      whatsApp,
      is_share_contact_whats_app,
      is_share_contact_linkedin,
      is_share_contact_phone,
      is_share_contact_email})
      : super(email: email, linkedin: linkedin, phone: phone, whatsApp: whatsApp) {
    this.is_share_contact_whats_app = is_share_contact_whats_app;
    this.is_share_contact_linkedin = is_share_contact_linkedin;
    this.is_share_contact_phone = is_share_contact_phone;
    this.is_share_contact_email = is_share_contact_email;
  }

  factory ExpandedContacts.fromJson(Map<String, dynamic> json) {
    return ExpandedContacts(
        email: json['email'],
        linkedin: json['linkedin'],
        phone: json['phone'],
        whatsApp: json['whats_app'],
        is_share_contact_email: json['is_share_contact_email'],
        is_share_contact_linkedin: json['is_share_contact_linkedin'],
        is_share_contact_phone: json['is_share_contact_phone'],
        is_share_contact_whats_app: json['is_share_contact_whats_app']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data.addAll(super.toJson());
    data.addAll({
      "is_share_contact_phone": this.is_share_contact_phone,
      "is_share_contact_linkedin": this.is_share_contact_linkedin,
      "is_share_contact_email": this.is_share_contact_email,
      "is_share_contact_whats_app": this.is_share_contact_whats_app
    });
    return data;
  }
}
