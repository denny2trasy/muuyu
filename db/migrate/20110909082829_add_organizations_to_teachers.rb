class AddOrganizationsToTeachers < ActiveRecord::Migration
  def self.up
    add_column  :teachers,  :nationality, :string
    add_column  :teachers,  :organizations, :string
    add_column  :teachers,  :organization_other,  :string
    add_column  :teachers,  :availability, :string
    add_column  :teachers,  :travel_expenses, :string
  end

  def self.down
    remove_column :teachers,  :nationality
    remove_column :teachers,  :organizations
    remove_column :teachers,  :organization_other
    remove_column :teachers,  :availability
    remove_column :teachers,  :travel_expenses
  end
end
