class AddFieldsToOvertStaff < ActiveRecord::Migration[5.2]
  def change
  	 add_column :overtstaffs,:email_confirmed, :boolean
  	 add_column :overtstaffs,:confirmation_token, :string
  	 add_column :overtstaffs,:first_name, :string
  	 add_column :overtstaffs,:last_name, :string
  end
end
