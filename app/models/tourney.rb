class Tourney < ActiveRecord::Base
  belongs_to :tourney_type
  belongs_to :tourney_comment
  belongs_to :tourney_comments
  belongs_to :user
  belongs_to :venue
  belongs_to :game_type
end
