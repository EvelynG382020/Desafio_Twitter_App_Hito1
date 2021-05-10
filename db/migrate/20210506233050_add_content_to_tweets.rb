class AddContentToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :content, :text
  end
end
