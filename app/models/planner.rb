class Planner < ApplicationRecord
  has_secure_password
  has_many :events, class_name: "Event"
end
