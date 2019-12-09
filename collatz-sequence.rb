def collatz(number)
  length = 1
  if number <= 0
    puts nil
  end
  while number != 1
    length += 1
    number = number.even? ? (number / 2) : (number * 3 + 1)
  end
  length
end


def max_collatz
  largest_length = 0
  largest_number = 0
  (1.. 1000000).each do |n|
    length = collatz(n)
    if length > largest_length
      largest_length = length
      largest_number = n
    end
  end
  {:largest_number => largest_number, :largest_length => largest_length}
end





puts collatz(7)
puts max_collatz