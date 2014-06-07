class PlayResponse < ActiveRecord::Base

  belongs_to :play
  belongs_to :users, :through => :players
end
