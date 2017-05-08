# require modules here
require "yaml"

def load_library(yaml_file)
  # code goes here
  library = {"get_meaning" => {}, "get_emoticon" => {} }
    YAML.load_file(yaml_file).each do |definition, emoticons|
      english = emoticons[0]
      japanese = emoticons[1]
      library["get_emoticon"][english] = japanese
      library["get_meaning"][japanese] = definition
    end
  library
end

def get_japanese_emoticon(yaml_file, emoticon)
  # code goes here

  library = load_library(yaml_file)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml_file, emoticon)
  # code here
  library = load_library(yaml_file)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
