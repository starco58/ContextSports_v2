class PlayResponse < ActiveRecord::Base

  belongs_to :user
  belongs_to :player
  belongs_to :play

  validates :play_response, :presence => true, :uniqueness => { :scope => :user_id }

  validates :user_id, :presence => true, :uniqueness => { :scope => :player_id }

end
