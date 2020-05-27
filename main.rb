require 'twitter'

#作成したTwitterアプリにアクセスする情報を記載する
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['MY_CONSUMER_KEY']
  config.consumer_secret     = ENV['MY_CONSUMER_SECRET']
  config.access_token        = ENV['MY_ACCESS_TOKEN']
  config.access_token_secret = ENV['MY_ACCESS_TOKEN_SECRET']
end

textlines = Array.new
File.open("list.txt", mode="rt"){|f|
  textlines = f.readlines
}

client.update(textlines.sample) #ツイートする文字列
