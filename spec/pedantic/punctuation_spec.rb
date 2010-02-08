require 'spec/spec_helper'

describe Pedantic::Punctuation do
  it "replaces can't with cannot" do
    Pedantic.fix("can't foo").should == 'cannot foo'
  end
  
  it "removes other apostrophes" do
    Pedantic.fix("isn't it foo").should == 'foo'
  end
  
  it "replaces sh*t with shit" do
    Pedantic.fix('sh*t').should == 'shit'
  end
  
  it "replaces f**k and f*ck with fuck" do
    Pedantic.fix('f**k f*ck').should == 'fuck fuck'
  end
end
