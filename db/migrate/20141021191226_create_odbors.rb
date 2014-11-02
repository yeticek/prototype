class CreateOdbors < ActiveRecord::Migration
  def change
    create_table :odbors do |t|
      t.integer :cislo
      t.string :nazov

      t.timestamps
    end
  end
end
