class Play < ActiveRecord::Base

  belongs_to :events
  belongs_to :players

  has_many :responses

end
