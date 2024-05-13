require_relative 'string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.add('')).to eq(0)
  end

  it "returns the same number for a single input" do
    expect(StringCalculator.add("7")).to eq(7)
  end

  it "returns the 6 (sum of two numbers) for the input '1,5'" do
    expect(StringCalculator.add("1,5")).to eq(6)
  end

  it "allows the add method to handle new lines(\n) between numbers" do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it "throws an exception for invalid input" do
    expect { StringCalculator.add("1,\n") }.to raise_error("invalid input")
  end
end
