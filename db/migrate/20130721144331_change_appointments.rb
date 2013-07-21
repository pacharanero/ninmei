class ChangeAppointments < ActiveRecord::Migration
  def change
  	rename_column :appointments, :doctors_id, :doctor_id
  end
end
