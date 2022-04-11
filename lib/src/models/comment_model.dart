class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName = '',
    this.authorImageUrl = '',
    this.text = '',
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Bao Tran',
    authorImageUrl: 'lib/assets/images/user0.png',
    text: 'Cố tình làm vậy cho mọi người chê thôi :>',
  ),
  Comment(
    authorName: 'Nhut Pham',
    authorImageUrl: 'lib/assets/images/user1.png',
    text: 'Xấu ghê Bảo ơi',
  ),
  Comment(
    authorName: 'Titkul',
    authorImageUrl: 'lib/assets/images/user2.png',
    text: 'Làm xấu vầy cuối tháng trừ lương nhoeeee',
  ),
  Comment(
    authorName: 'Nhut Pham',
    authorImageUrl: 'lib/assets/images/user1.png',
    text: 'Xấu ghê Bảo ơi',
  ),
  Comment(
    authorName: 'Titkul',
    authorImageUrl: 'lib/assets/images/user2.png',
    text: 'Làm xấu vầy cuối tháng trừ lương nhoeeee',
  ),
];
