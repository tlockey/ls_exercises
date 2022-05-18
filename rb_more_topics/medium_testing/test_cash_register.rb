require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative "cash_register"
require_relative "transaction"

class CashRegisterTest < Minitest::Test
  def setup
    @cash_register = CashRegister.new(100)
    @transaction = Transaction.new(20)
    @transaction.amount_paid = 30
  end

  def test_accept_money
    skip
    # take a second look at this
    @cash_register.accept_money(@transaction)
    assert_equal(120,@cash_register.total_money)
    # make sure it properly changes the amount of money 
    # returned by total_money
  end

  def test_change
    expected = 10
    assert_equal(expected, @cash_register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $20.\n") do 
      @cash_register.give_receipt(@transaction)
    end
  end

end
