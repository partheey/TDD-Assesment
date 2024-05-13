class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    delimiter = ','
    if input.include?("//")
      delimiter = input[2]
      input = input[4..]
    end
    raise 'invalid input' if input.include?("#{delimiter}\n") || input.include?("\n#{delimiter}")
    raise 'negative numbers not allowed' if input=~/(-\d)/

    input.split(/#{delimiter}|\n/).map(&:to_i).sum
  end
end
