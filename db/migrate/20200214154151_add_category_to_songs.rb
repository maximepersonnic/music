class AddCategoryToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :category, :string
  end
end
