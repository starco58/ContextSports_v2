class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :own_players, :class_name => "Player", :foreign_key => "user_id", :dependent => :destroy

  has_many :players, :dependent => :destroy

  has_many :owned_players, :through => :owned_players, :source => :player

  # has_many :followings_where_follower, :class_name => "Owned_players", :foreign_key => "owned_player_id"

  # XXX has_many :owners, :through => :followings_where_follower, :source => :XXXXXXX

  # has_many :timeline, :through => :leaders, :source => :own
end
