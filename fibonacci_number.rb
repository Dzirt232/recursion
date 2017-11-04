def fibs(length)
  curr_num = 0
  next_num = 1
  arr = [curr_num,next_num]
  while (length-=1) > 1
    curr_num, next_num = next_num, curr_num + next_num
    arr << next_num
  end
  arr
end

def fibs_rec(length, curr_num=0,next_num=1,arr = [])
  length > 0 ? fibs_rec(length-1,next_num,curr_num+next_num,arr<<curr_num) : arr
end

puts fibs(10)
puts
puts fibs_rec(10)
