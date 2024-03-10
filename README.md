---
title: ProtoSpaceのER図
---

erDiagram
---
  usersテーブル |--{prototypesテーブル
---
---
  usersテーブル{
email (string型,NOT NULL,ユニーク制約)
encrypted_password (string型,NOT NULL)
name (string型, NOT NULL)
profile(tax型, NOT NULL)
occupation (tax型,NOT NULL)
position(text型,NOT NULL)
  }
---

---
  usersテーブル |--{commentsテーブル
---

---
  prototypesテーブル|--{commentsテーブル
  prototypeテーブル{
    content (text型, NOT NULL)
prototype (references型, NOT NULL,外部キー)
user (references型, NOT NULL,外部キー)
  }
---

---
  commentsテーブル{
title (string型, NOT NULL)
catch_copy (text型, NOT NULL)
concept (text型, NOT NULL)
user (references型, NOT NULL,外部キー)

※imageはActiveStorageで実装するため含まない
  }
---