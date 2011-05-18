class AddIdentityToVideo < ActiveRecord::Migration
  def self.up
    add_column :videos, :identity, :string
  end

  def self.down
    remove_column :videos, :identity
  end
end
