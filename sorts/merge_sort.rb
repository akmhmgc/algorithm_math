def merge_sort(l, r)
  return [A[l]] if r - l == 1

  m = (r + l) / 2
  m_l = merge_sort(l, m)
  m_r = merge_sort(m, r)

  merge(m_l, m_r)
end

def merge(sorted_arr1, sorted_arr2)
  arr = []
  until sorted_arr1.empty? && sorted_arr2.empty?
    if sorted_arr1.empty?
      arr += sorted_arr2
      sorted_arr2 = []
      next
    end

    if sorted_arr2.empty?
      arr += sorted_arr1
      sorted_arr1 = []
      next
    end

    arr << if sorted_arr1[0] < sorted_arr2[0]
             sorted_arr1.slice!(0, 1)[0]
           else
             sorted_arr2.slice!(0, 1)[0]
           end
  end
  arr
end

A = [1, 4, 6, 2, 3, 5].freeze
p merge_sort(0, 6)
