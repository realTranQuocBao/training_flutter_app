class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    this.authorName = '',
    this.authorImageUrl = '',
    this.timeAgo = '',
    this.imageUrl = '',
  });
}

final List<Post> posts = [
  Post(
      authorName: 'Bao Tran',
      authorImageUrl: 'lib/assets/images/user1.png',
      timeAgo: '13 secconds',
      imageUrl: 'lib/assets/images/post0.jpg'),
  Post(
      authorName: 'Nhut Pham',
      authorImageUrl: 'lib/assets/images/user1.png',
      timeAgo: '27 minutes',
      imageUrl: 'lib/assets/images/post1.jpg'),
];

final List<String> stories = [
  'lib/assets/images/user1.png',
  'lib/assets/images/user2.png',
  'lib/assets/images/user3.png',
  'lib/assets/images/user4.png',
  'lib/assets/images/user0.png',
  'lib/assets/images/user1.png',
  'lib/assets/images/user2.png',
  'lib/assets/images/user3.png',
];
