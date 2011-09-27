class CreateAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.string :id_doctor
      t.time :hour_on #hora no disponible
      t.time :hour_end #hora en q termina la no disponibilidad
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :availabilities
  end
end
