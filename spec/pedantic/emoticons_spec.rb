require 'spec/spec_helper'

describe Pedantic::Emoticons do
  it "replaces :) with smile" do
    Pedantic.fix('foo :)').should == 'foo smile'
  end
  
  it "replaces :( with sad" do
    Pedantic.fix('foo :(').should == 'foo sad'
  end
  
  it "replaces :D with happy" do
    Pedantic.fix('foo :D').should == 'foo happi'
  end
  
  it "replaces :S and :s with unsure" do
    Pedantic.fix('foo :S :s').should == 'foo unsur unsur'
  end
  
  it "replaces ;) with joke" do
    Pedantic.fix('foo ;)').should == 'foo joke'
  end
end
