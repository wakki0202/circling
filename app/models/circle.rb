class Circle < ApplicationRecord
  has_many :circle_blogs
  has_many :applies, dependent: :destroy
end
