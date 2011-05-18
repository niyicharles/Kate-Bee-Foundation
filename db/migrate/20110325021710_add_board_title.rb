class AddBoardTitle < ActiveRecord::Migration
  def self.up
    add_column :boards, :title, :string
  end

  def self.down
    remove_column :boards, :created_at
  end
end

