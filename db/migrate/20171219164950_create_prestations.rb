class CreatePrestations < ActiveRecord::Migration[5.1]
  def change
    create_table :prestations do |t|
      t.string :name
      t.string :categorie
      t.string :description
      t.integer :tarif
      t.string :duree
      t.integer :user_id
      t.string :lieu
      t.string :lien

      t.timestamps
    end
  end
end
