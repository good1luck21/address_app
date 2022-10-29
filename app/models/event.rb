class Event < ApplicationRecord
  belongs_to :planner, class_name: "Planner", foreign_key: "planner_id"
end
