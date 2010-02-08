require 'stemmer'

module Pedantic::Stems
  def self.included(base)
    base.processors :reduce_to_stems
  end
  
  def reduce_to_stems(string)
    string.split(/\W+/).collect { |word|
      word.stem
    }.join(' ')
  end
end
