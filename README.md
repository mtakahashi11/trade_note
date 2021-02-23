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