class User < ApplicationRecord
  validates :name, length: { in: 2..30 }
  validates :surname, length: {in: 2.. 40 }
  validates :birthdate, presence: true
end
