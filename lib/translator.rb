# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  # code goes here
  translator = YAML.load_file(file_path)
  translator.each do |key, value|
    binding.pry
    translator[key][:english] = translator[key][0]
    translator[key][:japanese] = translator[key][1]
    puts translator
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library("emoticons.yml")