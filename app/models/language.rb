class Language < ActiveRecord::Base
  has_and_belongs_to_many :user
  has_many :resources

  validates_presence_of :name
end
