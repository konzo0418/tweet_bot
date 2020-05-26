require 'twitter'

#作成したTwitterアプリにアクセスする情報を記載する
client = Twitter::REST::Client.new do |config|
    config.consumer_key    = "RwZAbLTn9J8l3gfHfFBsltFiA"
    config.consumer_secret = "4g8CRkszHrjvdRPc5s71iCGTwDtjzu7gSFDPZDXYJsQT0ZMtwc"
    config.access_token    = "2412453626-BCFdTYAJdPrpEMPgwNydpTu5eglWnqCuc5eUOKB"
    config.access_token_secret = "HVpZ7PdYJtkE1bnhUbT2cAOqSFukTkSMrOgysiVu2BAXZ"
end

client.update("Tweet from Ruby!!!!") #ツイートする文字列
