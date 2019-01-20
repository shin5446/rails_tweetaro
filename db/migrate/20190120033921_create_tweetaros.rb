class CreateTweetaros < ActiveRecord::Migration[5.1]
  def change
    create_table :tweetaros do |t|
      t.text :content

      t.timestamps
    end
  end
end
