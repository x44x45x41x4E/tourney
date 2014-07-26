class CreateMessagers < ActiveRecord::Migration
  def change
    create_table :messagers do |t|
      t.string :message_type
      t.references :user, index: true
      t.string :shortcode
      t.string :message_id
      t.text :message
      t.string :client_id
      t.string :secret_key

      t.timestamps
    end
  end
end
