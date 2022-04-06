require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

#MiniTest::Unit.autorun

#class TestFoo < MiniTest::Unit::TestCase
class TestGate < MiniTest::Test

  def setup #テスト用に作ったデータ
    @umeda = Gate.new(:umeda) #defの外（下）で使うので@  gete.rbのnameに当てはめられる
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end 

  def test_umeda_to_juso_when_fare_is_not_enough
    ticket = Ticket.new(150) #ticket.rbのticketに当てはめられる
    #(ticketってやつは全部これ)
    @umeda.enter(ticket) #@umedaの、def enter(ticket)に飛び、そこからticket.stamp(@name)より、def stamp(name)に飛ぶ
    #そこで　 @stamped_at = name #駅名を代入する、
    assert @juso.exit(ticket) #assertで戻り値がtrueになる事を確認
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
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
