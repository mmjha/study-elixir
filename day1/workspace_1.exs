# page92 연습문제 5-2
fn1 = fn
  (0, 0, _) -> IO.puts "FizzBuzz"
  (0, _, _) -> IO.puts "Fizz"
  (_, 0, _) -> IO.puts "Buzz"
  (_, _, param) -> IO.puts "#{param}"
end

fn1.(0, 0, 1)
fn1.(0, 1, 2)
fn1.(1, 0, 1)
fn1.(1, 1, 3)
