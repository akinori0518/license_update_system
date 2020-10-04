# license_update_system DB設計
## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null:false|
|first_name|string|null:false|
|password|string|null:false, unique:true|
|license_number|integer|null:false, unique:true|
### Association
- has_one :address, :dependent => :destroy
- has_one :information, :dependent => :destroy
- has_one :image, :dependent => :destroy
- has_one :card, :dependent => :destroy

## Addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, foreign_key:true|
|postcode|integer|null:false|
|prefecture|string|null:false|
|city|string|null:false|
|block|string|null:false|
### Association
- belongs_to :user

## Informationsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, foreign_key:true|
|email|string|null:false, unique:true|
|phone_number|integer|null:false|
### Association
- belongs_to :user

## Imagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, foreign_key:true|
|image|string|null:false|
### Association
- belongs_to :user

## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, foreign_key:true|
|customer_id|string|null:false|
|card_id|string|null:false|
### Association
- belongs_to :user