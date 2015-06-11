class Squad < ActiveRecord::Base
  has_many :players
  validates :name, :formation, presence:true
end
