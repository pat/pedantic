module Pedantic::Txt
  def self.included(base)
    base.processors :replace_txt_words
  end
  
  def replace_txt_words(string)
    {
      /\btn?x\b/i  => 'thanks',
      /\bthnks\b/i => 'thanks'
    }.each { |pattern, replacement|
      string.gsub!(pattern, replacement)
    }
    
    string
  end
end
