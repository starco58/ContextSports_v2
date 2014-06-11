class PlayResponse < ActiveRecord::Base

  belongs_to :user
  belongs_to :play

  belongs_to :player
  # validates :player_id, :presence => true, :uniqueness => { :scope => :user_id }

  # validates :user_id, :presence => true, :uniqueness => { :scope => :player_id }

end
