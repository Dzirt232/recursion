def merge_sort(a)
  n = a.length
  if n > 1
    b, c = merge_sort(a[0..(n-1)/2]), merge_sort(a[(n-1)/2+1..n-1])
    q = b.length
    p = c.length
    i_a = 0; i_b = 0; i_c = 0
    while i_b < q && i_c < p
        if b[i_b] < c[i_c]
          a[i_a] = b[i_b]; i_b += 1
        else
          a[i_a] = c[i_c]; i_c += 1
        end
        i_a += 1
    end
    if i_b == q && i_c != p
      a[i_a..p+q-1] = c[i_c..p-1]
    elsif i_b != q && i_c == p
      a[i_a..p+q-1] = b[i_b..q-1]
    else
      return a
    end
    return a
  else
    return a
  end
end

puts merge_sort([1,34,2,3,45,6,8,5])
puts merge_sort([1,34,2,3,45,6,8,5,0])
