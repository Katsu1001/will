# 概要
***
  本アプリは、体づくりをする為に作ったアプリです。
  このアプリによって解決したいことは、以下の通りです。

  <解決したい問題>
  - 自分の体力レベルに合った種目を知りたい
  - 今やっている種目がどこを刺激し、どんな作用をするものなのかが分からない

#### 作成した理由


#### 実装する予定の機能
***

  1. ユーザー管理機能
  - 新規登録機能
  - ログイン機能
  - ログアウト
  - マイページ

  2. 体づくりの情報を管理する機能
  - 投稿機能
  - 一覧表示機能
  - 詳細表示機能
  - 編集機能
  - 削除機能

  3. 目標管理機能
  - 投稿機能
  - 一覧表示機能
  - 詳細表示機能
  - 編集機能
  - 削除機能

  4. カレンダー機能
  - トレーニング（トレーニングした部位、トレーニング内容）の管理
  - トレーニングデータをグラフ化
  - パーツ別に総負荷量を表示
  - 写真投稿

  5. コメント機能
  - 投稿機能
  - 一覧表示機能
  - 編集機能
  - 削除機能

  6. お気に入り管理機能
  - 登録機能
  - 一覧表示機能
  - 削除機能

#### 今後追加予定の機能

# テーブル設計
***

## Users テーブル

  |  Column           |  Type      | Option    |
  |------------        |--------    |--------   |
  |nickname            |string      |null:false |
  |email               |string      |unique: true, null:false|
  |encrypted_password  |string      |null:false |
  |family_name         |string      |null:false |
  |first_name          |string      |null:false |
  |family_name_katakana         |string      |null:false |
  |first_name_katakana          |string      |null:false |
  |birthday            |date    |null:false|
  
  ## Association
  - has_many :information
  - has_many :To_do_lists
  - has_many :Favorites
  - has_many :tweets
  - has_many :comments


<!-- 
  ~usersテーブルが持っている情報~
1.ニックネーム
2.メールアドレス
3.パスワード（６文字以上）
  (理由:)passwordカラムは削除。deviseのgemがあらかじめ用意しているencrypted_passwordを使用しているため。
4.パスワード（確認）
5.お名前(全角)
6.お名前カナ(全角)
7.生年月日  -->

## information テーブル


  |  Column         |  Type     | Option    |
  |------------     |--------   |--------   |
  |name             |string     |null:false |
  |introduction     |text       |null:false |
  |category_id      |integer    | null:false |
  |user             |references | null: false, foreign_key: true |
  |favorite         |references | null: false, foreign_key: true |
  |to_do_list         |references | null: false, foreign_key: true |

  ## Association
  - belongs_to :user
  - has many :favorites
  - has many :information

<!-- 
  ~information テーブルが持っている情報~
1.タイトル（４０文字まで）
2.カテゴリー
3.詳細
4.ユーザー名
-->

## To do lists テーブル

  |  Column     |Type    | Option    |
  |------------ |--------|--------   |
  |purpose      |string  |null:false |
  |objective    |string  |null:false |
  |period       |string  |null:false |
  |ideal        |string  |null:false |
  |user         |references | null: false, foreign_key: true |
  |information  |references | null: false, foreign_key: true |
  
  ## Association
  - belongs_to :user
  - has many :information

<!-- 
  ~To do lists テーブルが持っている情報~
1. 目的
2. 目標
3. いつまでに達成したいか
4. どんなイベントがあるのか
5. 気になる部位
 -->

   ## tweets テーブル

  |  Column         |  Type     | Option    |
  |------------     |--------   |--------   |
  |text             |text       |null:false |
  |category_id      |integer    | null:false |
  |user             |references | null: false, foreign_key: true |
  |comment          |references | null: false, foreign_key: true |
 
  ## Association
  - belongs_to :user
  - has_many :tweets
  <!--
  ~Tweets テーブルが持っている情報~
  1. ユーザー情報
  2. カテゴリー情報（運動、栄養、休養、その他の教養）
  3. コメント内容
  -->

 ## Comments テーブル

  |  Column         |  Type     | Option    |
  |------------     |--------   |--------   |
  |text             |text       |null:false |
  |category_id      |integer    | null:false |
  |user             |references | null: false, foreign_key: true |
  |tweet            |references | null: false, foreign_key: true |
 
  ## Association
  - belongs_to :user
  - belongs_to :tweets
  
  <!--
  ~Comments テーブルが持っている情報~
  1. ユーザー情報
  2. コメント内容
  -->

## Favorites テーブル

  |  Column        |Type    | Option    |
  |------------    |--------|--------   |
  |name            |string  |null:false |
  |user            | references | null: false, foreign_key: true |
  |information     | references | null: false, foreign_key: true |

  ## Association
  - belongs_to :user
  - belongs_to :information
  
  <!--
  ~Favorites テーブルが持っている情報~
  1. ユーザー情報
  2. informationのタイトル
  -->