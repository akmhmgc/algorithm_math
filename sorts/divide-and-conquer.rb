# 分割統治法

A = [1, 2, 3, 4, 5]

def solve(l, r)
  return A[l] if r - l == 1

  m = (l + r) / 2
  s1 = solve(l, m)
  s2 = solve(m, r)
  s1 + s2
end

p solve(0, 5)
