## ProtoSpaceのER図

|                                        |
|usersテーブル                           |
|                                        |
|email(string型, NOT NULL,ユニーク制約)  |
|encrypted_password (string型, NOT NULL) |
|name(string型, NOT NULL)                |
|profile(text型, NOT NULL)               |
|occupation( text型, NOT NULL)           |
|position(text型, NOT NULL)              |
|                                        |

## groups_usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association
- belongs_to :group
- belongs_to :user