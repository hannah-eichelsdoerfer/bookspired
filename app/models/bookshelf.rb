class Bookshelf < ApplicationRecord
  belongs_to :user
  has_many :shelved_books, dependent: :destroy
  has_many :books, through: :shelved_books
end
