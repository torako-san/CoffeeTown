# テーブル設計

## User

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false, unique: true |
| email              | string | null: false               |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| given_name         | string | null: false               |
| phone_number       | string | null: false  unique: true |

### アソシエーション
- has_many :productions
- has_many :shop, dependent: :destroy
- has_many :wish_lists, dependent: :destroy
- belongs_to :prefectures

## Wish_list

| Column             | Type       | Options                              |
| ------------------ | ---------- | ------------------------------------ |
| production_id      | references | null: null: false, foreign_key: true |
| user_id            | references | null: null: false, foreign_key: true |

### アソシエーション
- belongs_to :user
- belongs_to :production

## Shop

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| user_id            | references | null: false  unique: true |
| name               | string     | null: false               |
| shop_url           | string     | null: false               |
| prefectures_id     | integer    | null: false               |
| shi_ku_gun         | string     |                           |
| chome_banchi       | string     |                           |

### アソシエーション
- has_one :production
- has_one_attached :image
- belongs_to :prefectures
- belongs_to :user

## Production

| Column                        | Type       | Options                   |
| ----------------------------- | ---------- | ------------------------- |
| user_id                       | references | null: false  unique: true |
| shop_id                       | references | null: false  unique: true |
| name                          | string     | null: false               |
| purchase_date                 | date       | null: false               |
| coffee_beans_type             | string     |                           |
| farm_name                     | string     |                           |
| product_report                | text       |                           |
| product_category_id           | integer    | null: false               |
| coffee_blend_id               | integer    | null: false               |
| degree_of_roasting_id         | integer    | null: false               |
| country_of_origin_id          | integer    | null: false               |
| carefully_selected_method_id  | integer    | null: false               |
| sweetness_id                  | integer    | null: false               |
| acidity_id                    | integer    | null: false               |
| bitter_taste_id               | integer    | null: false               |
| flavor_id                     | integer    | null: false               |

### アソシエーション
- has_many :production_tags
- belongs_to :product_category
- belongs_to :coffee_blend
- belongs_to :degree_of_roasting
- belongs_to :country_of_origin
- belongs_to :carefully_selected_method
- belongs_to :sweetness
- belongs_to :acidity
- belongs_to :bitter_taste
- belongs_to :flavor
- belongs_to :user

## Production_tag

| Column         | Type       | Options                   |
| -------------- | ---------- | ------------------------- |
| tag_id         | references | null: false  unique: true |
| production_id  | references | null: false  unique: true |

### アソシエーション
- belongs_to :tag
- belongs_to :production

## Tag

| Column         | Type       | Options                   |
| -------------- | ---------- | ------------------------- |
| tag_id         | references | null: false  unique: true |
| production_id  | references | null: false  unique: true |

### アソシエーション
- has_many :production_tags