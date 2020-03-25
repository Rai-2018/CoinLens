require 'test_helper'

class CoinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @coin = coins(:testcoin)
  end

  test "coin name is not empty" do
  	@coin.name = ""
  	assert_not @coin.valid?
  end

  test "coin amount is not empty" do
    @coin.amount = ""
    assert_not @coin.valid?
  end
end