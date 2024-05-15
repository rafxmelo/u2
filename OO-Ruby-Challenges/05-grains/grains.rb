class Grains
  def self.square(number)
    raise ArgumentError, 'Square number must be between 1 and 64' unless number.between?(1, 64)
    2**(number - 1)
  end

  def self.total
    (1..64).sum { |number| square(number) }
  end
end
