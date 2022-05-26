# page92 연습문제 5-3
fn1 = fn
  (0, 0, _) -> IO.puts "FizzBuzz"
  (0, _, _) -> IO.puts "Fizz"
  (_, 0, _) -> IO.puts "Buzz"
  (_, _, param) -> IO.puts "#{param}"
end

n = 16
fn1.(rem(n, 3), rem(n, 5), n)
