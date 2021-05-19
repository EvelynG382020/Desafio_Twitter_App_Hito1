class RemoveTweetIdToTweet < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :tweet_id, :integer
  end
end
