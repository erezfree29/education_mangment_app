class AddRefrenceToOvertStaff < ActiveRecord::Migration[5.2]
  def change
  	add_reference :institutions, :overtstaffs, foreign_key: true
  end
end
