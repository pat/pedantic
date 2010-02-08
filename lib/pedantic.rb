class Pedantic
  @@processors = []
  
  def self.fix(string)
    Pedantic.new(string).to_s
  end
  
  def self.processors(*methods)
    @@processors += methods
  end
  
  def initialize(string)
    @original = string
  end
  
  def to_s
    process
  end
  
  private
  
  def process
    @current = @original.clone
    
    @@processors.each do |processor|
      @current = send(processor, @current)
    end
    
    @current.gsub(/\s+/, ' ').strip
  end
end

require 'pedantic/emphasis'
require 'pedantic/emoticons'
require 'pedantic/html'
require 'pedantic/punctuation'
require 'pedantic/stems'
require 'pedantic/txt'
require 'pedantic/unimportant'
require 'pedantic/uris'

class Pedantic
  include Pedantic::Uris
  include Pedantic::Html
  include Pedantic::Emoticons
  include Pedantic::Txt
  include Pedantic::Punctuation
  include Pedantic::Emphasis
  include Pedantic::Unimportant
  include Pedantic::Stems
end
