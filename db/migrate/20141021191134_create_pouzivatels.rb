class CreatePouzivatels < ActiveRecord::Migration
  def change
    create_table :pouzivatels do |t|
      t.string :nick
      t.string :heslo

      t.timestamps
    end
  end
end
