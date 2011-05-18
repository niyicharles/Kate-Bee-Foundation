class AddBoardData < ActiveRecord::Migration
  def self.up

    Board.delete_all

    Board.create(
      :title => "Dr",
      :firstname => "Christy",
      :lastname => "Adokiye",
      :othernames => "George",
      :position => "Founder/President")

    Board.create(
      :title => "Mr",
      :firstname => "Biobele",
      :lastname => "Da-Wariboko",
      :othernames => "",
      :position => "Vice President Financial Secretary")

    Board.create(
      :title => "Madam",
      :firstname => "Betha",
      :lastname => "Adokiye",
      :othernames => "",
      :position => "Matron")

    Board.create(
      :title => "Madam",
      :firstname => "Judith",
      :lastname => "Kalio",
      :othernames=> "",
      :position => "Treasurer")

    Board.create(
      :title => "Mr",
      :firstname => "Ene",
      :lastname => "George",
      :othernames=> "Bamson",
      :position => "Executive Director")

    Board.create(
      :title => "Mrs",
      :firstname => "Elizabeth",
      :lastname => "Abibo",
      :othernames=> "",
      :position => "Director - Empowerment")

    Board.create(
      :title => "Rev",
      :firstname => "Canon",
      :lastname => "Bamson",
      :othernames=> "Tonye",
      :position => "Director - Spiritual Development")

    Board.create(
      :title => "Mrs",
      :firstname => "Ibiye",
      :lastname => "Yellowe",
      :othernames=> "",
      :position => "Secretary")

    Board.create(
      :title => "Mr",
      :firstname => "Joe",
      :lastname => "Eliaho",
      :othernames=> "",
      :position => "Member")

  end

  def self.down
    Board.delete_all
  end
end

