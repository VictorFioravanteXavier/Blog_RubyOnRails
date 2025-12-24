class Category < ApplicationRecord
  has_many :articles, dependent: :restrict_with_error

  validates :name, presence: true, length: { minimum: 5 }

  scope :sorted, -> { order(:name) }
end
