require 'spec/spec_helper'

describe Pedantic do
  describe '.fix' do
    it "removes leading and trailing spaces" do
      Pedantic.fix(' foo ').should == 'foo'
    end
    
    it "replaces multiple spaces with a single space" do
      Pedantic.fix('foo   bar').should == 'foo bar'
    end
    
    it "replaces new lines with spaces" do
      Pedantic.fix("foo\nbar").should == 'foo bar'
    end
  end
end
