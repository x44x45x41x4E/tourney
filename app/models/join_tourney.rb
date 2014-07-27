class JoinTourney < ActiveRecord::Base
  belongs_to :user
  belongs_to :tourney
end
