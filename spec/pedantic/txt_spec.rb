require 'spec/spec_helper'

describe Pedantic::Txt do
  it "replaces tx with thank" do
    Pedantic.fix('tx').should == 'thank'
  end
  
  it "replaces tnx with thank" do
    Pedantic.fix('tnx').should == 'thank'
  end
  
  it "replaces thnks with thank" do
    Pedantic.fix('thnks').should == 'thank'
  end
end
