class Player < ActiveRecord::Base

  has_many :users
  has_many :plays
  has_many :users

  belongs_to :team

  has_many :play_responses, :through => :plays, :source => :events
  has_many :owners, :through => :owned_players, :source => :user

  validates :play, :presence => true, :uniqueness => { :scope => :play_response }
  validates :user_id, :presence => true
end
