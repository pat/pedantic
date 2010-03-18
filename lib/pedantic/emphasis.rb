module Pedantic::Emphasis
  def self.included(base)
    base.processors :fix_emphasis
  end
  
  def fix_emphasis(string)
    {
      /\bso+\b/        => 'so',
      /\bre+a+ll+y\b/i => 'really',
      /\boka+y\b/i     => 'okay',
      /\boo+h\b/i      => 'ooh',
      /\bthe shit\b/i  => 'fantastic'
    }.each { |pattern, replacement|
      string.gsub!(pattern, replacement)
    }
    
    string
  end
end