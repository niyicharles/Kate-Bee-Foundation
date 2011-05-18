class Sponsor < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :othernames, :title, :email, :phone, :address, :projectname

  acts_as_textiled :information
end

