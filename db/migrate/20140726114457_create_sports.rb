class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.integer :sports_id
      t.string :sports_name

      t.timestamps
    end
  end
end
