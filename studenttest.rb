require 'minitest/autorun'
require './cdapp'
require './janken'

class TestGate < MiniTest::Test
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
  end 



  def test_umeda_to_juso_150
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
    
  end 

  
end
