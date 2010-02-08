require 'spec/spec_helper'

describe Pedantic::Uris do
  it "removes explicit web addresses" do
    Pedantic.fix('foo http://bar.com bar').should == 'foo bar'
  end
  
  it "removes explicit https addresses" do
    Pedantic.fix('foo https://bar.com bar').should == 'foo bar'
  end
  
  it "removes implicit web addresses" do
    Pedantic.fix('foo domain.com bar').should == 'foo bar'
  end
end
