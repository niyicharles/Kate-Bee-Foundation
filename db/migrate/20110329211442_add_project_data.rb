class AddProjectData < ActiveRecord::Migration
  def self.up

    Project.delete_all

    Project.create(
      :title => "Sponsor a girl child",
      :description => "Sponsor a girl child"
    )

    Project.create(
      :title => "Sponsor a physically challenged",
      :description => "Sponsor a physically challenged"
    )

    Project.create(
      :title => "Provide set-up grant for a trainee",
      :description => "Provide set-up grant for a trainee"
    )

    Project.create(
      :title => "Provide internship opportunity for a trainee",
      :description => "Provide internship opportunity for a trainee"
    )

    Project.create(
      :title => "Sponsor a skills acquisition session",
      :description => "Sponsor a skills acquisition session"
    )

  end

  def self.down

    Project.delete_all

  end
end

