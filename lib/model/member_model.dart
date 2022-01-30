class MemberModel {
  final String name;
  final String title;
  final String description;
  final String imageUrl;
  final String? linkedInUrl;
  final String? twitterUrl;
  final String? githubUrl;
  final String? facebookUrl;
  final String? instagramUrl;

  MemberModel({
    required this.name,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.linkedInUrl,
    this.twitterUrl,
    this.githubUrl,
    this.facebookUrl,
    this.instagramUrl,
  });
}
