# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## importantsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|task_id|integer|

### Association
- belongs_to :task
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|email|string|default: "", null: false|
|encrypted_password|string|default: "", null: false|
|reset_password_token|string|

### Association
- has_many :tasks
- has_many :importants

## tasksテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|title|string|
|message|string|

### Association
- has_many :importants
- belongs_to :user