class RenameBookshelfTitleToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookshelves, :title, :name
  end
end
