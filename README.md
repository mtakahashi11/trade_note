# TRADE_NOTE
 
FXトレードの取引記録を登録できて、自身の取引記録を見る事ができる。
投稿機能もあり、画像や自身のトレード結果などを投稿し共有できる。
 
# DEMO

 ![trade_note](https://user-images.githubusercontent.com/76547704/116022405-18b04b00-a685-11eb-9211-632166ff9967.gif)

# Features
 
過去のトレードの成績記録をまとめられたり、自身の投資関係のポートフォリオの作成もできるようになります。
 
# Note

注意点:まだ完成しておらず、マイページのトレード記録を削除しようとするとエラーが起こります。
 

# テーブル設計

## users テーブル

| Column   | Type     | Options      |
| -------- | -------- | ------------ |
| name     | string   | null: false  |
| email    | string   | unique: true |
| password | string   | null: false  |

### Association

- has_many :trades
- has_many :posts
- has_many :comments

## trades テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| date            | integer    | null: false       |
| time            | integer    | null: false       |
| currency_id     | integer    | null: false       |
| type_id         | integer    | null: false       |
| entry           | integer    | null: false       |
| exit            | integer    | null: false       |
| holding_time_id | integer    | null: false       |
| pip             | integer    | null: false       |
| fee             | integer    | null: false       |
| profit_loss     | integer    | null: false       |
| win_lose_id     | integer    | null: false       |
| user            | references | foreign_key: true |

### Association

- belongs_to :user

## posts テーブル

| Column      | Type          | Options           |
| ----------- | ------------- | ----------------- |
| description | text          | null: false       |
| image       | ActiveStorage |                   |
| user        | references    | foreign_key: true |

### Association

- belongs_to :user
- has_many   :comments

## comments テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| text   | text       | null: false       |
| user   | references | foreign_key: true |
| trade  | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post
