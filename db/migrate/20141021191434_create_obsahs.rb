class CreateObsahs < ActiveRecord::Migration
  def change
    create_table :obsahs do |t|
      t.string :pouzivatel
      t.string :priradene_profesie
      t.string :priradene_obory
      t.string :nazov_obsahu
      t.text :vzdelavaci_obsah

      t.timestamps
    end
  end
end
