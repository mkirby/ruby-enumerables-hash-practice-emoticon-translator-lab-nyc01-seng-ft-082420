# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  # code goes here
  translator = YAML.load_file(file_path)
  translator.each do |key, value|
    english_emoticon = value[0]
    japanese_emoticon = value[1]
    translator[key] = {}
    translator[key][:english] = english_emoticon
    translator[key][:japanese] = japanese_emoticon
  end
  translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

#load_library("emoticons.yml")