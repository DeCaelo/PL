class RenameOrganizationEmployee < ActiveRecord::Migration[5.0]
  def change
    rename_table :organization_employees, :employee_organizations
  end
end
