module Pedantic::Unimportant
  def self.included(base)
    base.processors :remove_unimportant_words
  end
  
  def remove_unimportant_words(string)
    %w(
      a again all along also an and are as at but by came can cant couldnt did 
      didn didnt do doesntdont ever first from have her here him how i if in 
      into is isnt it itll just last least like most my new no not now of on or
      should sinc so some th than this that the their then those to told too
      true try until url us were when whether while with within yes you youll
    ).each { |word|
      string.gsub!(/\b#{word}\b/, '')
    }
    
    string
  end
end
