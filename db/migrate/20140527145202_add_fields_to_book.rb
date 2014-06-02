class AddFieldsToBook < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :author, :string
    add_column :books, :isbn_10, :decimal, :precision => 10
    add_column :books, :isbn_13, :decimal, :precision => 13
    add_column :books, :rank, :integer
  end
end
