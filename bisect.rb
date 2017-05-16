#! /usr/bin/env ruby

$:.unshift File.dirname(__FILE__)
require 'math_extensions'

require 'minitest/autorun'

describe "Math.finite_log10" do
  it "returns 3 for 1000" do
    assert_equal 3, Math.finite_log10(1000)
  end
end
