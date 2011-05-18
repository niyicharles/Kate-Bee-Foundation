class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :title
      t.string :location
      t.datetime :date_of_event
      t.string :emphasis
      t.string :cameraman
      t.text :information
      t.timestamps
    end
  end
  
  def self.down
    drop_table :videos
  end
end
