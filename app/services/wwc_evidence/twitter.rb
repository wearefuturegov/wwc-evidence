module WwcEvidence
  class Twitter
    include Singleton

    CLIENT = ::Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    end

    def latest_tweet
      CLIENT.user_timeline(ENV['TWITTER_USERNAME'], tweet_mode: :extended).first
    end
  end
end
