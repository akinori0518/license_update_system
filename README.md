# license_update_system DB設計
## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null:false|
|password(license_number)|string|null:false, unique:true|
### Association
- has_one :address, :dependent => :destroy
- has_one :information, :dependent => :destroy
- has_one :image, :dependent => :destroy
- has_one :card, :dependent => :destroy

## Addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, foreign_key:true|
|address|string|null:false|
|certificate|string|null:false|
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

## Paymentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false, foreign_key:true|
|customer_id|string|null:false|
|card_id|string|null:false|
### Association
- belongs_to :user