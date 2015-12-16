class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :placa
      t.text :descripcion
      t.string :marca
      t.string :color
      t.references :apartamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
