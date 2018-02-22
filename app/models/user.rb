class User < ApplicationRecord
  has_many :comments
  has_and_belongs_to_many :followers,
                          class_name: 'User',
                          join_table:  :followers,
                          foreign_key: :user_id,
                          association_foreign_key: :follower_user_id
  has_and_belongs_to_many :following,
                          class_name: 'User',
                          join_table:  :followers,
                          foreign_key: :follower_user_id,
                          association_foreign_key: :user_id
end
