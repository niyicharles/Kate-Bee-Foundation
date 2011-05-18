class AddVistorsData < ActiveRecord::Migration
  def self.up

    Visitor.delete_all

    Visitor.create(
      :name => "sponsors",
      :direction => "sponsors_path")

    Visitor.create(
      :name => "projects",
      :direction => "projects_path")

    Visitor.create(
      :name => "partners",
      :direction => "partners_path")

    Visitor.create(
      :name => "targets",
      :direction => "targets_path")

    Visitor.create(
      :name => "objectives",
      :direction => "objectives_path")

    Visitor.create(
      :name => "funding",
      :direction => "funding_path")
    Visitor.create(
      :name => "structure",
      :direction => "structure_path")

    Visitor.create(
      :name => "activities",
      :direction => "activities_path")

    Visitor.create(
      :name => "direction",
      :direction => "direction_path")

  end

  def self.down
    Visitor.delete_all
  end
end

