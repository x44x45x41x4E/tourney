class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :card_id
      t.string :card_name

      t.timestamps
    end
  end
end
