# coding: utf-8
require "rubygems"
require "twitter"
require "date"

Process.daemon

class Balus

  BALUS_TIME = DateTime.new(2011, 12, 9, 23, 22, 00, Rational(9, 24))

  # 取得したTwitter用各データを設定
  Twitter.configure do |config|
    config.consumer_key = "asLiLfcCOErKBy9aFNCX8w"
    config.consumer_secret = "RGf3Z13QUn9LETY4Xb0klT3EgxCpYXDPKQlUC4GlsQM"
    config.oauth_token = "9619962-RhMAGsqlUmrM79uS5GNCJg60w07FA8a08KzC9VHIbV"
    config.oauth_token_secret = "fdc1ADx96yHHdxEbw9sL3FsLAvr42D2V2JeRmnzsts"
  end
  
  while true
    if BALUS_TIME < DateTime.now
      Twitter.update("バルス！")
      exit
    end
   sleep(10)
  end

end
