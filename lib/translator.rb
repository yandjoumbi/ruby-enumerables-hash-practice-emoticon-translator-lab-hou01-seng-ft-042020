require 'yaml'
require 'pry'

def load_library (file)
  # code goes here
  emotes_src = YAML.load_file(file)
  emoticons = {}
  emotes_src.each do |key, value|
    emoticons[key] = {}
    emoticons[key][:english] = value[0]
    emoticons[key][:japanese] = value[1]
  end
  emoticons
end	

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
