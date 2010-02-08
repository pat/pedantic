module Pedantic::Punctuation
  def self.included(base)
    base.processors :replace_punctuation
  end
  
  def replace_punctuation(string)
    {
      /\bcan't\b/ => 'cannot',
      /'/         => '',
      /sh\*t/     => 'shit',
      /f\*[\*c]k/ => 'fuck'
    }.each { |pattern, replacement|
      string.gsub!(pattern, replacement)
    }
    
    string
  end
end
