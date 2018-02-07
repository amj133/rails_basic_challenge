class Student < ApplicationRecord
  validates :name, presence: true

  has_many :addresses, dependent: :delete_all
end
