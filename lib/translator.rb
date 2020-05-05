require "yaml"
require 'pry'
# require modules here




def load_library(file_path)
 file = File.read(file_path)
 hash = {}
 emoticons = YAML.load(file)
 emoticons.each do |key, value|
 hash[key] = {:english => value[0] ,:japanese => value[1]}
 end
hash
end  

def get_english_meaning(file_path, emoticon)
  load_library(file_path)
  
end
