class AddApiToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :api, foreign_key: true
  end
end
