## productsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|price|int|null: false, index: true|
|image|references|foreign_key: true|
|description|varchar|null: false, index: true|
|size|string||
|brand|string||
|exhibitor|string|null: false|
|state|string|null: false|
|category|string|null: false|
|delivery_fee|int|null: false|
|shipping_method|string|null: false|
|estimated_shipping|string|null: false|
|user|references|foreign_key: true|
|transaction_status|string|null: false|
|buyer|string||
|nice|int||


### Association
- has_many: images
- belongs_to: user
- has_ancestry



## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image_url|string||
|product|references|foreign_key: true|


### Association
- belongs_to: product



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|text|null: false|
|mail|string|null: false|


### Association
- has_many: products
- has_many: evaluations
- has_many: notices_users
- has_many: notices, through::notices_users
- belongs_to: address
- belongs_to: cardnumber
- belongs_to: account
- belongs_to: profile



## profilesテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|introduction|varchar||
|image_url|text||
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|


### Association
- has_one: user



## evaluationsテーブル

|Column|Type|Options|
|------|----|-------|
|evaluation|string|null: false|
|comment|string||
|user|references|foreign_key: true|


### Association
- belongs_to: user



## noticesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string||
|contents|text||


### Association
- has_many: notices_users
- has_many: users, through::notices_users



## notices_usersテーブル

|Column|Type|Options|
|------|----|-------|
|notice|references|foreign_key: true|
|user|references|foreign_key: true|


### Association
- belongs_to: user
- belongs_to: notice



## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|postalcode|int|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|address|string|null: false|
|buildingname|string||
|tell|int|null: false|
|user|references|foreign_key: true|


### Association
- has_one: user



## cardnumbersテーブル

|Column|Type|Options|
|------|----|-------|
|cardnumber|int|null: false|
|expirationdate_month|int|null: false|
|expirationdate_year|int|null: false|
|securitycode|int|null: false|
|user|references|foreign_key: true|


### Association
- has_one: user




## accountsテーブル

|Column|Type|Options|
|------|----|-------|
|bank|varchar|null: false|
|account_type|string|null: false|
|cranch_code|int|null: false|
|account_number|int|null: false|
|account_holder_firstname|string|null: false|
|account_holder_lastname|string|null: false|
|address|string|null: false|
|name|string|null: false|
|user|references|foreign_key: true|


### Association
- has_one: user

