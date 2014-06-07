class Player < ActiveRecord::Base

  has_many :users
  has_many :plays
  has_many :responses, :through => :plays

  belongs_to :team
end
