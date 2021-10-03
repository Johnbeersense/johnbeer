import 'package:closer_bottom_navigation_bar/timeline_models/post_model.dart';
import 'package:closer_bottom_navigation_bar/timeline_models/user_model.dart';

final User currentUser = User(
  name: '성지훈',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

final List<User> onlineUsers = [
  User(
    name: '이승만',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '윤보선',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '박정희',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    name: '최규하',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    name: '전두환',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    name: '노태우',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '김영삼',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: '김대중',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: '노무현',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: '이명박',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '박근혜',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '문재인',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '이재명',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    name: '노알라',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    name: '노보노보',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    name: '고무통',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: '박하늘',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: '박딱새우',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: '박미키',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: '박잭슨',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Post> posts = [
  Post(
    user: onlineUsers[7],
    caption: '오늘 여의도 벚꽃축제는 어쩌고...',
    timeAgo: '2021.09.17',
    imageUrl: 'https://source.unsplash.com/daily',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption:
        '마 마 매껴나라 고마 ',
    timeAgo: '3hr',
    imageUrl: 'https://source.unsplash.com/daily',
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: '예아',
    timeAgo: '8hr',
    imageUrl: 'https://source.unsplash.com/daily',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: '기모띠',
    timeAgo: '15hr',
    imageUrl: 'https://source.unsplash.com/daily',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption: '와이래씨끄럽노',
    timeAgo: '1d',
    imageUrl: 'https://source.unsplash.com/daily',
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: '야 좋다!',
    timeAgo: '1d',
    imageUrl: 'https://source.unsplash.com/daily',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];
