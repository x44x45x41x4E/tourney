class Tourney < ActiveRecord::Base
  belongs_to :tourneytypes
  belongs_to :tourneycomments
  belongs_to :schedules
  belongs_to :venues
  belongs_to :users
  belongs_to :gametypes
  belongs_to :rsvp_stats
end
