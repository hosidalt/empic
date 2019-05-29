# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false
|name|string|null: false
|e-mail|string|null: false, unique: true

### Association
- has_many :pictures
- has_many :usre-tags


## pictuersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false
|image|string|null: false
|comment|text|
|user_id|references|null: false, foreign_key: true|

### Association
- has_many :picture-tags
- belongs_to :users


## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false
|name|string|null: false

### Association
- has_many :picture-tags
- has_many :user-tags


## picture-tagsテーブル

|Column|Type|Options|
|------|----|-------|
|picture_id|references|null: false, foreign_key: true|
|tag_id|references|null: false, foreign_key: true|

### Association
- belongs_to :pictures
- belongs_to :tags

##user_tagsテーブル
Column|Type|Options|
|------|----|-------|
|usr_id|references|null: false, foreign_key: true|
|tag_id|references|null: false, foreign_key: true|

### Association
- belongs_to :users
- belongs_to :tags
