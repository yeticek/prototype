class CreateProfesia < ActiveRecord::Migration
  def change
    create_table :profesia do |t|
      t.integer :profesia_cislo
      t.string :nazov_profesie

      t.timestamps
    end
  end
end
