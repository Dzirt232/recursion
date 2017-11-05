def multiples(number,index=1,summ=0)
  if number>1
    summ += index if (index+1) % 3 == 1 || (index+1) % 5 == 1
    multiples(number-1,index+1,summ)
  else
    return summ
  end
end

puts multiples(10)
puts multiples(1000)
