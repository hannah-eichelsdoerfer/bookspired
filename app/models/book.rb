class Book < ApplicationRecord
  belongs_to :author
  accepts_nested_attributes_for :author

  has_many :shelved_books, dependent: :destroy
  has_many :bookshelves, through: :shelved_books
  
  has_many :reviews, dependent: :destroy
end
