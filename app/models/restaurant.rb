class Restaurant < ApplicationRecord
  CATEGORY= ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address,  presence: true
  validates :category, presence: true, inclusion: {in: CATEGORY }
  # validates  presence: true
  # validates  presence: true
  has_many :reviews, dependent: :destroy
end
