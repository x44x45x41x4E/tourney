class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :board_id
      t.string :board_name

      t.timestamps
    end
  end
end
