module Pedantic::Uris
  def self.included(base)
    base.processors :remove_uris
  end
  
  def remove_uris(string)
    [
      /https?:\/\/\S+/,
      /([\w\.])+\.(com|co|net|org|info)(\.\w+)?/
    ].each { |pattern|
      string.gsub!(pattern, '')
    }
    
    string
  end
end
