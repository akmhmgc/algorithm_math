# 階乗の再帰計算

def func(x)
  return 1 if x == 1

  x * func(x - 1)
end

p func(3)
