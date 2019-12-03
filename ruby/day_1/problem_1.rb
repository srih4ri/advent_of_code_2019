def assert(expected, actual)
  if expected == actual
    puts "Test OK: #{expected}"
  else
    puts "Test Failed : Exp: #{expected} Actual : #{actual}"
  end
end

def fuel_required(mass)
  (mass.to_i/3) - 2 
end

assert(2,fuel_required(12))
assert(2,fuel_required(14))
assert(654, fuel_required(1969))
assert(33583, fuel_required(100756))

total_fuel_required = 0

File.readlines("input.txt").each do |mass|
  total_fuel_required += fuel_required(mass)
end

puts "Total Fuel required: #{total_fuel_required}"
