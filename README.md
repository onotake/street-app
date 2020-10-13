# テーブル設計

## user テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many: posts
- has_many: comments
- has_many: likes

## post テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| caption  | text       | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- has_many  : likes
- has_many  : comments
- has_many  :post_tags
- has_many  :tags, through: post_tags
- belongs_to: user

## post_tag テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| post   | references | null: false, foreign_key: true |
| tag    | references | null: false, foreign_key: true |

### Association

- belongs_to: post
- belongs_to: tag

## tag テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| tag_name | string | null: false |

### Association

- has_many :post_tags
- has_many :post, through: post_tags

## comment テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| post    | references | null: false, foreign_key: true |

### Association

- belongs_to: user
- belongs_to: post

## like テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| post    | references | null: false, foreign_key: true |

### Association

- belongs_to: user
- belongs_to: post

### ER図

![StreetApps](https://user-images.githubusercontent.com/62535314/95812883-6e5c8000-0d51-11eb-9940-f6ceedb6969a.png)







