## ProtoSpaceのER図

## usersテーブル
| Column              | Type       | Options                          |
| ------------------- | ---------- | -------------------------------- |
| email               | string     | null: false, foreign_key: unique |
| encrypted_password  | string     | null: false, foreign_key: true   |
| name                | string     | null: false                      |
| profile             | text       | null: false                      |
| occupation          | text       | null: false                      |
| position            | text       | null: false                      |
## groups_usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association
- belongs_to :group
- belongs_to :user