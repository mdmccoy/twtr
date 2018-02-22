class AddSmallPictureToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :small_picture, :string
  end
end
