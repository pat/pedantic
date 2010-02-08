module Pedantic::Emoticons
  def self.included(base)
    base.processors :replace_emoticons
  end
  
  def replace_emoticons(string)
    {
      /(^|\s)\:\)(\s|$)/ => ' smile ',
      /(^|\s)\:\((\s|$)/ => ' sad ',
      /(^|\s)\:D(\s|$)/  => ' happy ',
      /(^|\s)\:S(\s|$)/  => ' unsure ',
      /(^|\s)\:s(\s|$)/  => ' unsure ',
      /(^|\s)\;\)(\s|$)/ => ' joke '
    }.each do |pattern, replacement|
      string.gsub!(pattern, replacement)
    end
    
    string
  end
end
