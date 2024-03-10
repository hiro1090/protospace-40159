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

## prototypeテーブル
| Column              | Type             | Options                          |
| ------------------- | ---------------- | -------------------------------- |
| title               | string           | null: false                      |
| catch_copy          | text             | null: false                      |
| concept             | text             | null: false                      |
| user                | references       | null: false,foreign_key: true    |

| ※imageはActiveStorageで実装するため含まない                         |


## commentsテーブル
| Column              | Type           | Options                          |
| ------------------- | ----------     | -------------------------------- |
| content             | text           | null: false                      |
| prototype           | references     | null: false, foreign_key: true   |
| user                | references     | null: false, foreign_key: true   |
