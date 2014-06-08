class Event < ActiveRecord::Base
  has_many :plays
  has_many :teams

end
