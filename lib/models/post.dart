class Post {
  String accountImage;
  String postImage;
  String name;
  List<String>? likedBy;
  String? caption;
  String postDate;

  Post(
      {required this.accountImage,
      required this.postImage,
      required this.name,
        this.likedBy,
        this.caption,
      required this.postDate});
}
