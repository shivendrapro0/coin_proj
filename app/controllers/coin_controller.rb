require 'json'
require 'open-uri'
require 'net/http'
require 'uri'

class CoinController < ApplicationController


helper_method :getLatestPrice
helper_method :genURI
helper_method :getTopTen
# To get latest Price
#
def getLatestPrice(api_uri,curr)

  api_server      = 'https://api.coinmarketcap.com'
  url =  "#{api_server}#{api_uri}/?convert=#{curr}"
  api_json  = getJsonObject(url)
  json_hash = Hash[*api_json.flatten]
  puts(json_hash['price_inr'])
  return json_hash['price_inr']
end

# To get api uri
#
def genURI(c_type)
 if c_type == 'BTC'
   c_uri = '/v1/ticker/bitcoin'
 elsif c_type == 'LTC'
   c_uri = '/v1/ticker/litecoin'
 elsif c_type == 'ETH'
   c_uri = '/v1/ticker/ethereum'
 elsif c_type == 'XRP'
   c_uri = '/v1/ticker/ripple'
 else
   c_uri = '/v1/ticker/notsupported'
 end
 return c_uri
end

def getJsonObject(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  data = JSON.parse(response.body)
  return data 
end

def getTopTen
  topTen = getJsonObject('https://api.coinmarketcap.com/v1/ticker/?limit=10&convert=INR')
  return topTen
end

  def getPrice
  end

  def getETH
  end

  def getBTC
  end

  def getLTC
  end
 
  def getTopTenCoin 
  end

  def getXRP
  end
end
