require 'test_helper'

class CoinControllerTest < ActionDispatch::IntegrationTest
  test "should get getBTC" do
    get coin_getBTC_url
    assert_response :success
  end

  test "should get getLTC" do
    get coin_getLTC_url
    assert_response :success
  end

  test "should get getETH" do
    get coin_getETH_url
    assert_response :success
  end

end
