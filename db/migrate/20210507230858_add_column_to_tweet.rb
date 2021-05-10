class AddColumnToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :retweet, :integer
  end
end
