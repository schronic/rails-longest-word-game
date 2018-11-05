require "open-uri"

class GameController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('A'..'Z').to_a.sample
    end
  end

  def score
    word = params["word"]
    url = open("https://wagon-dictionary.herokuapp.com/#{word}")
    @obj = JSON.parse(url.read)
    word_arr = @obj['word'].upcase.split('')

    @comp = params["letters"].split(' ')
    letters = params["letters"].split(' ')
    word_arr.each_with_index do |i, index|
      if letters.include?(i)
        letters.delete_at(index)
      else
        @letters_used = false
      end
    end
    @letters = letters
  end
end




