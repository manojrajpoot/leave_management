class AddAdminStatusToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :admin_status, :boolean
    
    @employee = Employee.create do |employee|
      employee.email = "admin@grepruby.com"
      employee.password = "grepruby"
      employee.admin_status = true
      #employee.skip_confirmation!
      employee.save
    end  
  end
end
