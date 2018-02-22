class ChangeUsersTable < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :followers, :string, array: true, default: [], using: "(string_to_array(followers, ','))"
  end
end
