
def fizz_buzz(n)
  if n % 15 == 0
      "fizzbuzz"
  elsif n % 5 == 0
      "buzz"
  elsif n % 3 == 0
      "fizz"
  else
      n.to_s
  end
end


require 'minitest/autorun'



class FizzBuzzTest < Minitest::Test
  def test_fizzbuzz
    assert_equal "1", fizz_buzz(1)
    assert_equal "fizzbuzz", fizz_buzz(15)
  end

end
