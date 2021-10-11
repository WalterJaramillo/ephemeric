class CreateEphemeris < ActiveRecord::Migration[6.1]
  def change
    create_table :ephemeris do |t|
      t.datetime :fecha
      t.string :categoria
      t.string :comentario
      t.string :imagen

      t.timestamps
    end
  end
end
