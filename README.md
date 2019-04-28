## productsテーブル

|Column|Type|Options|
|------|----|-------|
|productname|varchar|null: false, index: true|
|price|int|null: false, index: true|
|image|references|foreign_key: true|
|description|varchar|null: false, index: true|
|size|varchar||
|brand|varchar(20)||
|exhibitor|string|null: false|
|state|varchar|null: false|
|category_largeclass|varchar|null: false|
|category_middleclass|varchar|null: false|
|category_smallclass|varchar|null: false|
|delivery_fee|int|null: false|
|shipping_method|varchar|null: false|
|estimated_shipping|varchar|null: false|
|user|references|foreign_key: true|
|transaction_status|varchar|null: false|
|buyer|string||
|nice|int||


### Association
- has_many: images
- has_many: products_users
- has_many: users, through::products_users



## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image_url|string||
|product|references|foreign_key: true|


### Association
- has_many: belongs_to: product



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|text|null: false|
|mail|string|null: false|


### Association
- has_many: products_users
- has_many: products, through::products_users
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


### Association
- has_one: user



## evaluationsテーブル

|Column|Type|Options|
|------|----|-------|
|evaluation|varchar|null: false|
|comment|varchar(30)||
|user|references|foreign_key: true|


### Association
- belongs_to: user



## noticesテーブル

|Column|Type|Options|
|------|----|-------|
|title|varchar(128)||
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



## products_usersテーブル

|Column|Type|Options|
|------|----|-------|
|product|references|foreign_key: true|
|user|references|foreign_key: true|


### Association
- belongs_to: user
- belongs_to: product



## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|first_name|varchar|null: false|
|last_name|varchar|null: false|
|first_name_kana|varchar|null: false|
|last_name_kana|varchar|null: false|
|postalcode|int|null: false|
|prefectures|varchar|null: false|
|city|varchar|null: false|
|address|varchar|null: false|
|buildingname|varchar||
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
|account_type|varchar|null: false|
|cranch_code|int|null: false|
|account_number|int|null: false|
|account_holder_firstname|varchar|null: false|
|account_holder_lastname|varchar|null: false|
|address|varchar|null: false|
|name|varchar|null: false|
|user|references|foreign_key: true|


### Association
- has_one: user
