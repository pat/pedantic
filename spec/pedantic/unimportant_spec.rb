require 'spec/spec_helper'

describe Pedantic::Unimportant do
  it "removes words like 'the', 'a', 'and'" do
    Pedantic.fix('a foo and the bar').should == 'foo bar'
  end
end
