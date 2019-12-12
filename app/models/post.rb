# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 80 }
  validates :content, presence: true, length: { maximum: 8000 }

  belongs_to :user
end
