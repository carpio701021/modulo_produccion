class CreateLecturaContadors < ActiveRecord::Migration[5.2]
  def change
    create_table :lectura_contadors do |t|
      t.text :Direccion
      t.string :NumeroDeContador
      t.integer :Lectura

      t.timestamps
    end
  end
end
