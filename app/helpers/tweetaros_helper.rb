module TweetarosHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_tweetaros_path
    elsif action_name == 'edit'
      tweetaro_path
    end
  end
end
