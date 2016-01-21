class Language < ActiveRecord::Base
  # has many :users
  # has many :resources
  validates_presence_of :name
end
