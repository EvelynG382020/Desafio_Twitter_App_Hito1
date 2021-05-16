class AddRetweetToTweet < ActiveRecord::Migration[5.2]
  def change
    add_reference :tweets, :tweet
  end
end
