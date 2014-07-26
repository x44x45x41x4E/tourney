class RsvpStats < ActiveRecord::Base
  belongs_to :users
  belongs_to :tourneys
end
