class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.string :firstname
      t.string :lastname
      t.string :othernames
      t.string :position
      t.timestamps
    end
  end

  def self.down
    drop_table :boards
  end
end
