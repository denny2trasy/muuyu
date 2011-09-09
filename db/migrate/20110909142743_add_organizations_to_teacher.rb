class AddOrganizationsToTeacher < ActiveRecord::Migration
  def self.up
    add_column  :teachers,  :organizate_alliance, :boolean
    add_column  :teachers,  :organizate_wheel, :boolean
    add_column  :teachers,  :organizate_kundalini, :boolean
    add_column  :teachers,  :organizate_other, :boolean
  end

  def self.down
    remove_column :teachers,  :organizate_alliance
    remove_column :teachers,  :organizate_wheel
    remove_column :teachers,  :organizate_kundalini
    remove_column :teachers,  :organizate_other
  end
end
