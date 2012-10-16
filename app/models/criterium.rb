class Criterium < ActiveRecord::Base
  belongs_to :goals
  attr_accessible :name, :weight
  has_many :children, :class_name => "Criterium",
  	:foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Criterium"
end
