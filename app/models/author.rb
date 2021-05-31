class Author < ApplicationRecord
  has_many :books

  def fullname
    "#{first_name} #{last_name}"
  end
end
