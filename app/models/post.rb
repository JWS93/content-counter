class Post < ApplicationRecord
  validates :title, presence: true

  belongs_to :user, required: false
end
