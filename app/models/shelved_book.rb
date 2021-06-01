class ShelvedBook < ApplicationRecord
  belongs_to :book
  belongs_to :bookshelf
end
