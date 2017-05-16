#! /usr/bin/env ruby

$:.unshift File.dirname(__FILE__)
require 'math_extensions'

require 'minitest/autorun'

describe "Math.finite_log10" do
  it "returns 0 for 1" do
    assert_equal 0, Math.finite_log10(1)
  end

  it "returns 1 for 10" do
    assert_equal 1, Math.finite_log10(10)
  end

  it "returns 2 for 100" do
    assert_equal 2, Math.finite_log10(100)
  end

  it "returns 4 for 10000" do
    assert_equal 4, Math.finite_log10(10000)
  end

  it "raises Math::DomainError for negative values" do
    -> { Math.finite_log10(-1) }.must_raise Math::DomainError
  end
end
