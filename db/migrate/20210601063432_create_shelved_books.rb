class CreateShelvedBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :shelved_books do |t|
      t.references :book
      t.references :bookshelf

      t.timestamps
    end
  end
end
