class Contact {
  final String id;
  final String profileId;
  final String profileName;
  final String? profileUrl;

  Contact(
      {required this.id,
      required this.profileId,
      required this.profileName,
      this.profileUrl});

  Contact.fromMap({
    required Map<String, dynamic> map,
  })  : id = map['id'],
        profileId = map['profile_id'],
        profileName = map['profileName'],
        profileUrl = map['profileurl'];
}
