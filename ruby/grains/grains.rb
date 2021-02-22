class Grains
  def self.square(destination)

    previous_result = 1
    (2..destination).each do
      previous_result *= 2
    end

    previous_result
  end

  def self.total
    running_total = 1
    previous_result = 1
    (2..64).each do
      previous_result *= 2
      running_total += previous_result
    end

    running_total
  end
end

