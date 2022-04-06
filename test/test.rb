require 'minitest/autorun'
require './studenttest'
require './ticket'

#MiniTest::Unit.autorun

#class TestFoo < MiniTest::Unit::TestCase
class TestGate < MiniTest::Test

  def setup
    @umeda = Gate.new(:umeda) #defの外（下）で使うので@
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end 

  def test_umeda_to_juso_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_enough
    ticket = Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_juso_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end
end
