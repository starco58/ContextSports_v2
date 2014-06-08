class OwnedPlayer < ActiveRecord::Base

  belongs_to :user

  belongs_to :player

  validates :user_id, :presence => true, :uniqueness => { :scope => :player_id }

  validates :player_id, :presence => true

end
