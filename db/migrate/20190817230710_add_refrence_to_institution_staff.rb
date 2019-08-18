class AddRefrenceToInstitutionStaff < ActiveRecord::Migration[5.2]
  def change
  	add_reference :institutionstaffs, :institution, foreign_key: true
  end
end
