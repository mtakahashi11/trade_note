class Post < ApplicationRecord
  with_options presence: true do
    validates :description, length: { maximum: 1000 }
    validates :image
  end

  belongs_to :user
  has_one_attached :image
end
