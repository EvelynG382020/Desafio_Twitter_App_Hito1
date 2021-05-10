class AddRtRefToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :rt_ref, :integer
  end
end
