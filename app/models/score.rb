class Score < ActiveRecord::Base
  belongs_to :Criterium
  belongs_to :Candidate
  attr_accessible :value, :weighted_value
end
