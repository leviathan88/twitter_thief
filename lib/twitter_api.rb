class TwitterApi
    #bunch of methods that help me debug my application
    def self.get_ronaldo_tweets
        client.user_timeline('Cristiano', count: 30, include_rts: false)
    end
    
     def self.get_conor_tweets
        client.user_timeline('TheNotoriousMMA', count: 200, include_rts: false)
     end
    
    def self.get_user_tweets user
        client.user_timeline(user.screen_name, count: 2000, include_rts: false)
    end

    def self.client
        #so that it doesn't create new object every time
       @client ||= Twitter::REST::Client.new do |config|
          config.consumer_key        = "lXWDYfZtsiN6F8vMPpUGgQNdl"
          config.consumer_secret     = "1D9ng6XQEMy8OCruQzwY9D2hNBSJMvRu16ukmUNeVBMGGyPUWN"
        end
    end
end
