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
      authorImageUrl: 'lib/assets/images/userBaoTran.jpg',
      timeAgo: '13 seconds ago',
      imageUrl: 'lib/assets/images/postBaoTran.jpg'),
  Post(
      authorName: 'Nhut Pham',
      authorImageUrl: 'lib/assets/images/userNhutPham.jpg',
      timeAgo: '1 minutes ago',
      imageUrl: 'lib/assets/images/postNhutPham.jpg'),
  Post(
      authorName: 'Nhat Nguyen',
      authorImageUrl: 'lib/assets/images/userNhatNguyen.jpg',
      timeAgo: '13 minutes ago',
      imageUrl: 'lib/assets/images/postNhatNguyen.jpg'),
  Post(
      authorName: 'Hong Son',
      authorImageUrl: 'lib/assets/images/userHongSon.jpg',
      timeAgo: '18 minutes ago',
      imageUrl: 'lib/assets/images/postHongSon.jpg'),
  Post(
      authorName: 'Hoang Dang',
      authorImageUrl: 'lib/assets/images/userHoangDang.jpg',
      timeAgo: '43 minutes ago',
      imageUrl: 'lib/assets/images/postHoangDang.jpg'),
  Post(
      authorName: 'Hiep Thanh',
      authorImageUrl: 'lib/assets/images/userHiepThanh.jpg',
      timeAgo: '1 hour ago',
      imageUrl: 'lib/assets/images/postHiepThanh.jpg'),
  Post(
      authorName: 'Tuan',
      authorImageUrl: 'lib/assets/images/userTuan.jpg',
      timeAgo: '3 hours ago',
      imageUrl: 'lib/assets/images/postTuan.jpg'),
  Post(
      authorName: 'Phat',
      authorImageUrl: 'lib/assets/images/userPhat.jpg',
      timeAgo: '7 days ago',
      imageUrl: 'lib/assets/images/postPhat.jpg'),
];

final List<String> stories = [
  'lib/assets/images/userBaoTran.jpg',
  'lib/assets/images/userTuan.jpg',
  'lib/assets/images/userNhutPham.jpg',
  'lib/assets/images/userPhat.jpg',
  'lib/assets/images/userNhatNguyen.jpg',
  'lib/assets/images/userHoangDang.jpg',
  'lib/assets/images/userHongSon.jpg',
  'lib/assets/images/userHiepThanh.jpg',
];
