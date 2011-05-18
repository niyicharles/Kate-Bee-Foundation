class Board < ActiveRecord::Base
  attr_accessible :title, :firstname, :lastname, :othernames, :position
end

