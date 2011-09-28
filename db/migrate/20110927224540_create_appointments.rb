class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t| #citas
      t.time :init
      t.time :end
      t.string :state
      t.references :users
      t.references :doctors
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
