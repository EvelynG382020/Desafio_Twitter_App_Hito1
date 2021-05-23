class AddApiToUser < ActiveRecord::Migration[5.2]
  def down
    remove_foreign_key :users, :api
  end
  
end
