class Language < ActiveRecord::Base
  has many :resources
  has many :users
end
