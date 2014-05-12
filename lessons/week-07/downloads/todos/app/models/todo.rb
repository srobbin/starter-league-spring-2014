class Todo < ActiveRecord::Base
  validates :title, uniqueness: true
end
