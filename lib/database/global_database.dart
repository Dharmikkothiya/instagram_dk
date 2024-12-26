List<Map<String, dynamic>> users = [
  {
    //user_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
    // username	VARCHAR(255)	UNIQUE, NOT NULL
    // email	VARCHAR(255)	UNIQUE, NOT NULL
    // password_hash	VARCHAR(255)	NOT NULL
    // full_name	VARCHAR(255)	NULL
    // bio	TEXT	NULL
    // profile_pic	VARCHAR(255)	NULL
    // created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    // updated_at	DATETIME	DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    "user_id": "",
    "username": "",
    "email": "",
    "password_hash": "",
    "full_name": "",
    "bio": "",
    "profile_pic": "",
    "created_at": "",
    "updated_at": "",
  }
];
List<Map<String, dynamic>> posts = [
  {
    // post_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
    //   user_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    //   image_url	VARCHAR(255)	NOT NULL
    //   caption	TEXT	NULL
    //   created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    "post_id": "",
    "user_id": "",
    "image_url": "",
    "caption": "",
    "created_at": "",
  }
];
List<Map<String, dynamic>> likes = [
  {
//  like_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
// user_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
// post_id	BIGINT	FOREIGN KEY REFERENCES Posts(post_id) ON DELETE CASCADE
// created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP

    "like_id": "",
    "user_id": "",
    "post_id": "",
    "created_at": "",
  }
];
List<Map<String, dynamic>> comments = [
  {
    // comment_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
    // post_id	BIGINT	FOREIGN KEY REFERENCES Posts(post_id) ON DELETE CASCADE
    // user_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    // content	TEXT	NOT NULL
    // created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    "comment_id": "",
    "post_id": "",
    "user_id": "",
    "content": "",
    "created_at": "",
  }
];
List<Map<String, dynamic>> followers = [
  {
    // follower_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    // following_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    // created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    // PRIMARY KEY (follower_id, following_id)
    "follower_id": "",
    "following_id": "",
    "created_at": "",
  }
];
List<Map<String, dynamic>> stories = [
  {
    // story_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
    // user_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    // image_url	VARCHAR(255)	NOT NULL
    // created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    // expires_at	DATETIME	NOT NULL
    "story_id": "",
    "user_id": "",
    "image_url": "",
    "created_at": "",
    "expires_at": "",
  }
];
List<Map<String, dynamic>> messages = [
  {
    // message_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
    // sender_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    // receiver_id	BIGINT	FOREIGN KEY REFERENCES Users(user_id) ON DELETE CASCADE
    // content	TEXT	NOT NULL
    // created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    "message_id": "",
    "sender_id": "",
    "receiver_id": "",
    "content": "",
    "created_at": "",
  }
];
List<Map<String, dynamic>> hashtags = [
  {
    // hashtag_id	BIGINT	PRIMARY KEY, AUTO_INCREMENT
    // name	VARCHAR(255)	UNIQUE, NOT NULL
    // created_at	DATETIME	DEFAULT CURRENT_TIMESTAMP
    "hashtag_id": "",
    "name": "",
    "created_at": "",
  }
];
List<Map<String, dynamic>> postHashtags = [
  {
    // post_id	BIGINT	FOREIGN KEY REFERENCES Posts(post_id) ON DELETE CASCADE
    // hashtag_id	BIGINT	FOREIGN KEY REFERENCES Hashtags(hashtag_id) ON DELETE CASCADE
    // PRIMARY KEY (post_id, hashtag_id)
    "post_id": "",
    "hashtag_id": "",
  }
];
