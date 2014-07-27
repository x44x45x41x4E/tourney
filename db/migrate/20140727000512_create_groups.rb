class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :user, index: true
      t.references :tourney, index: true

      t.timestamps
    end
  end
end
