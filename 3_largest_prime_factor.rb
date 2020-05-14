def factor(num)
  # next line and line 13 for checking time spent on calculations 
  time = Time.now
  (2...num).each do |i|
    next unless (num % i).zero?
    next unless prime?(num / i)

    puts "the largest prime factor of #{num} is #{num / i}"
    break
  end
  puts Time.now - time
end

def prime?(num)
  is_prime = true
  (2...num).each do |i|
    next unless (num % i).zero?

    is_prime = false
    break
  end
  is_prime
end

factor(600851475143)
