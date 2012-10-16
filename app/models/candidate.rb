class Candidate < ActiveRecord::Base
  belongs_to :goals
  attr_accessible :name
end
