def collatz(n)
  longest_sequence = [] 
  (1..n).each do |x|
    sequence = [x]

    until sequence.last == 1
      if sequence.last.even?
        sequence.push(sequence.last / 2)
      else
        sequence.push(sequence.last * 3 + 1)
      end
    end  

    if sequence.length > longest_sequence.length
      longest_sequence = sequence
    end
  end

puts "#{longest_sequence[0]} produces the longest Collatz sequence, with a length of #{longest_sequence.length}!"

end

collatz(1000000)