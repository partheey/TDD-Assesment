class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    raise 'invalid input' if input.include?(",\n") || input.include?("\n,")

    input.split(/,|\n/).map(&:to_i).sum
  end
end
