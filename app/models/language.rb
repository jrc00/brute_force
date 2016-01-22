class Language < ActiveRecord::Base
  belongs_to :user
  has_many :resources

  validates_presence_of :name
end
