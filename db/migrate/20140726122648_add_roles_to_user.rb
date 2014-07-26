class AddRolesToUser < ActiveRecord::Migration
  def change
    add_reference :users, :roles, index: true
  end
end
