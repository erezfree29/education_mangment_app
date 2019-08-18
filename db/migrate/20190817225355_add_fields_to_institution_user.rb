class AddFieldsToInstitutionUser < ActiveRecord::Migration[5.2]
  def change
  	 add_column :institutionstaffs,:email_confirmed, :boolean
  	 add_column :institutionstaffs,:confirmation_token, :string
  	 add_column :institutionstaffs,:first_name, :string
  	 add_column :institutionstaffs,:last_name, :string
  end
end

