class AddFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :post_type, :string
    add_column :posts, :genre, :string
    add_column :posts, :enabled, :boolean
    add_column :posts, :length, :integer
  end
end
