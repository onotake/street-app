# Streeters

- URL:　https://street-apps.herokuapp.com/

- Basic認証: ユーザー名:takeru  

### テスト用アカウント

- Email: admin@admin.com

- Password: admin2222


## 概要

### 主な機能

- ストリートファッション専門のSNS投稿アプリです！

- コメント機能やいいね機能を実装することでユーザー同士のコミュニケーションが円滑に!

### その他機能

- 投稿編集 / 削除機能

- ユーザー登録 / ログイン / 編集 / 退会機能

- Rspec / Rubocopによるテスト機能

- タグ付け機能

- いいね！機能

### 今後の実装機能

- フォロー/フォロワー機能

- ランキング機能

- 検索機能

### 利用方法

- アカウントの新規登録/ログイン後から画像の投稿、編集、削除、いいね、コメント、タグ付けが可能です。

### 目指した課題解決

- ジャンルをストリートファッションのみに絞ることによって濃密な情報収集や交流ができる。

### 要件

| 優先順位(（高：3、中：2、低：1）) | 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり(所要時間) |
| - | - | - | - | - | - |
| 3 | ユーザー管理機能 | ユーザー情報の管理 | deviseを用いて実装する。 | 新規登録、ログイン、ログアウトができる。 | 3 |
| 3 | 画像、キャプション投稿機能 | ユーザー間のコミュニケーション | 画像はActiveStorageを用いて実装 | 画像+キャプションを入力すると投稿できる | 3 |
| 3 | いいね機能 | ユーザー間のコミュニケーション、ランキング機能に用いる | JavaScriptを用いて非同期処理を実装 | 気に入った投稿に対して「いいね」ボタンを押す | 5 |
| 3 | コメント機能 | ユーザー間のコミュニケーション | JavaScriptを用いて非同期処理を実装 | 投稿にコメントできる | 3 |
| 2 | フォロー機能 | ユーザー間のコミュニケーション | JavaScriptを用いて非同期処理を実装 | 画像はActiveStorageを用いて実装 | 5 |
| 2 | カテゴリ機能 | 閲覧したい情報を絞る | ActiveHashを用いて実装 | 閲覧したいジャンルの投稿のみを表示 | 3 |
| 2 | 検索機能 | 目的の投稿を探し出す | ransackを用いて実装 | 服のブランドをキーワード検索 | 5 |
| 1 | ランキング機能 | 人気の投稿を知れる | 人気の投稿を知れる | 人気の投稿を閲覧する | 5 |
| 1 | リコメンド機能 | ユーザーと親和性の高い投稿をおすすめする | "①ログインユーザーが一番最近いいねした投稿と同じカテゴリデータの投稿を取ってくる<br>②①の投稿の中でまだログインユーザーがいいねしていない投稿を取ってくる<br>③②の投稿の中で最新の投稿を１つ取ってくる(②が無い場合はランダムに1つ取ってくる)" | おすすめされた投稿からお気に入りの投稿、ユーザーを見つける。 | 5 |
| 1 | 位置情報機能 | アイテム購入場所の情報交換 | 外部appを用いて実装(GoogleMap) | アイテムを購入した店舗の位置情報をappで表示 | 5 |
| 優先順位（高：3、中：2、低：1） | 機能                       | 目的                                                   | 詳細                                                                                                                                                                                                                                              | ユースケース                                                 | 所要時間 | 
| 3                               | ユーザー管理機能           | ユーザー情報の管理                                     | deviseを用いて実装する。                                                                                                                                                                                                                          | 新規登録、ログイン、ログアウトができる。                     | 3        | 
| 3                               | 画像、キャプション投稿機能 | ユーザー間のコミュニケーション                         | 画像はActiveStorageを用いて実装                                                                                                                                                                                                                   | 画像+キャプションを入力すると投稿できる                      | 3        | 
| 3                               | いいね機能                 | ユーザー間のコミュニケーション、ランキング機能に用いる | JavaScriptを用いて非同期処理を実装                                                                                                                                                                                                                | 気に入った投稿に対して「いいね」ボタンを押す                 | 5        | 
| 3                               | コメント機能               | ユーザー間のコミュニケーション                         | JavaScriptを用いて非同期処理を実装                                                                                                                                                                                                                | 投稿にコメントできる                                         | 3        | 
| 2                               | フォロー機能               | ユーザー間のコミュニケーション                         | JavaScriptを用いて非同期処理を実装                                                                                                                                                                                                                | 画像はActiveStorageを用いて実装                              | 5        | 
| 2                               | カテゴリ機能               | 閲覧したい情報を絞る                                   | ActiveHashを用いて実装                                                                                                                                                                                                                            | 閲覧したいジャンルの投稿のみを表示                           | 3        | 
| 2                               | 検索機能                   | 目的の投稿を探し出す                                   | ransackを用いて実装                                                                                                                                                                                                                               | 服のブランドをキーワード検索                                 | 5        | 
| 1                               | ランキング機能             | 人気の投稿を知れる                                     | 人気の投稿を知れる                                                                                                                                                                                                                                | 人気の投稿を閲覧する                                         | 5        | 
| 1                               | リコメンド機能             | ユーザーと親和性の高い投稿をおすすめする               | "①ログインユーザーが一番最近いいねした投稿と同じカテゴリデータの投稿を取ってくる<br>②①の投稿の中でまだログインユーザーがいいねしていない投稿を取ってくる<br>③②の投稿の中で最新の投稿を１つ取ってくる(②が無い場合はランダムに1つ取ってくる)" | おすすめされた投稿からお気に入りの投稿、ユーザーを見つける。 | 5        | 
| 1                               | 位置情報機能               | アイテム購入場所の情報交換                             | 外部appを用いて実装(GoogleMap)                                                                                                                                                                                                                    | アイテムを購入した店舗の位置情報をappで表示                  | 5        | 


## 使用技術

### インフラ

- heroku

### バックエンド

- Ruby 2.6.5

- Ruby on Rails 6.0.3.4

### フロントエンド

- HTML

- CSS

- JavaScript

- JQuery


## テーブル設計

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

| Column   | Type   | Options                       |
| -------- | ------ | ----------------------------- |
| tag_name | string | null: false , uniqueness: true|

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


## ローカルでの動作方法

- 下記のコマンドを実行して、リポジトリをクローンしてください。
- git clone https://github.com/onotake/street-app.git


## 動作環境

- Ruby 2.6.5

- Ruby on Rails 6.0.3.4

- rbenv 1.1.2

- Bundler 2.1.4

- gem 3.0.3







