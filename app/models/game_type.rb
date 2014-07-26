class GameType < ActiveRecord::Base
  belongs_to :board
  belongs_to :card
  belongs_to :videogame
  belongs_to :sports
end
