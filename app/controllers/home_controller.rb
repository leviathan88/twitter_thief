class HomeController < ApplicationController
  def index
    
    @tweets = TwitterApi.get_ronaldo_tweets

    respond_to do |format|
      format.html
      format.json { @tweets.to_json }
    end
  end
end
