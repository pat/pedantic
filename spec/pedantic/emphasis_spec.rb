require 'spec/spec_helper'

describe Pedantic::Emphasis do
  it "replaces reeeaalllly with realy" do
    Pedantic.fix('Reaaally reeeaalllly').should == 'realli realli'
  end
  
  it "replaces okaaaay with okay" do
    Pedantic.fix('Okaaaaay okaaay').should == 'okai okai'
  end
  
  it "replaces oooooh with ooh" do
    Pedantic.fix('OoOoOoh').should == 'ooh'
  end
  
  it "replaces the shit with fantastic" do
    Pedantic.fix('the shit').should == 'fantast'
  end
end
