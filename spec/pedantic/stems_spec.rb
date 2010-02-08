require 'spec/spec_helper'

describe Pedantic::Stems do
  it "reduces words to their core stems" do
    Pedantic.fix('wandering').should == 'wander'
  end
  
  it "reduces all words to their core stems" do
    Pedantic.fix('wandering and running').should == 'wander run'
  end
end
