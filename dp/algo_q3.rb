N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
dp = Array.new(N) { Array.new(N, 0) }

# 1行目に値を入れる
dp[0][0] = 0
1.upto(M - 1).each { |i| dp[0][i] = -10**10 }

M.times do |wi|
  1.upto(N - 1).each do |ri|
    dp[ri][wi] = wi - A[ri - 1] >= 0 ? [dp[ri - 1][wi], dp[ri - 1][wi - A[ri - 1]] + B[ri - 1]].max : dp[ri - 1][wi]
  end
end

puts dp[N-1][M-1] < 0 ?  -1 : dp[N-1][M-1]
