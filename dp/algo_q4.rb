N, M = gets.chomp.split.map(&:to_i)
W = gets.chomp.split.map(&:to_i)
V = gets.chomp.split.map(&:to_i)

# dp[i][j]
# i番目までのボールを使って重さjとなる時の最大値の価値
dp = Array.new(N + 1) { Array.new(M + 1, -10**10) }

# 0番目までの品物を用いて0の重さを表現する場合の価値は0
dp[0][0] = 0

1.upto(N).each do |i|
  (M+1).times do |j|
    dp[i][j] = j - W[i -1] >=0 ? [dp[i-1][j], dp[i-1][j -  W[i -1]] + V[i-1]].max : dp[i-1][j]
  end
end

puts dp.last.max ? dp.last.max : 0
