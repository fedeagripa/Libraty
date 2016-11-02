class AddReferencesToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author, :books
  end
end
