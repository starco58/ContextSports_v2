class Play < ActiveRecord::Base

  belongs_to :event
  belongs_to :player

  has_many :play_responses

end
