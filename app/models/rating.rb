require 'nokogiri'
require 'open-uri'

class Rating
  CHESS_URL = "http://www.chess.com/members/view/"

  attr_accessor :online

  def initialize(username)
    @online = fetch_elo(username)
  end

  private

  def fetch_elo(username)
    doc = Nokogiri::HTML(open(CHESS_URL + username))
    rating = doc.xpath("//div[@id='c19']/div/div/div[@class='right']")[0].text
    rating
  end
end