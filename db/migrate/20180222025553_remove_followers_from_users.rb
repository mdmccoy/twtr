class RemoveFollowersFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :followers
  end
end
