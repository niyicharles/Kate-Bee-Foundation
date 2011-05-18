class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :firstname
      t.string :lastname
      t.string :othernames
      t.string :title
      t.string :email
      t.string :phone
      t.text :address
      t.string :projectname
      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end

