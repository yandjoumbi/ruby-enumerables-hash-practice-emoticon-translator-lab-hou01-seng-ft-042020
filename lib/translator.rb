require 'yaml'
require 'pry'



def get_japanese_emoticon(emoticons, get_emoticon)

  load_library(emoticons)["get_emoticon"].each do |k, v|
      if get_emoticon == k
        return v

      end

    end
  "Sorry, that emoticon was not found"
  end




def get_english_meaning(emoticons, get_meaning)

  load_library(emoticons)["get_meaning"].each do |k, v|
      if get_meaning == k
        return v
      end
    end
    "Sorry, that emoticon was not found"
  end
