require 'spec/spec_helper'

describe Pedantic::Html do
  it "removes HTML quotes" do
    Pedantic.fix('&quot;air quotes&quot;').should == 'air quot'
  end
end
