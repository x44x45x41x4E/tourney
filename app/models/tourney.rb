class Tourney < ActiveRecord::Base
  belongs_to :tourney_type
  belongs_to :tourney_comment
  belongs_to :tourney_comments
  has_and_belongs_to_many :users
  belongs_to :venue
  belongs_to :game_type
end
