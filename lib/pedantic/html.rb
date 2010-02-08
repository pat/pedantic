module Pedantic::Html
  def self.included(base)
    base.processors :remove_html
  end
  
  def remove_html(string)
    [
      /&quot;/
    ].each { |pattern|
      string.gsub!(pattern, '')
    }
    
    string
  end
end
