class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian french belgian japanese],
    message: 'not a valid category'
  }
end
