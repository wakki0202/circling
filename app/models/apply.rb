class Apply < ApplicationRecord
  belongs_to :circle, optional: true, foreign_key: "circle_id"
  belongs_to :user, optional: true, foreign_key: "user_id"
end
