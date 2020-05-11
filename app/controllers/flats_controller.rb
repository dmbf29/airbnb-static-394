require "open-uri"

class FlatsController < ApplicationController
  # before_action

  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    @images = []
    @flats.count.times do
      @images << open('http://le-wagon-tokyo.herokuapp.com/batches/394/student').read
    end
  end

  # http://localhost:3000/flats/:id'
  # http://localhost:3000/flats/145
  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    @flat = @flats.find do |flat|
      flat['id'].to_s == params[:id]
    end
  end
end
