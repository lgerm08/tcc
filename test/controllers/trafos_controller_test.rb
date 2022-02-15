require "test_helper"

class TrafosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trafo = trafos(:one)
  end

  test "should get index" do
    get trafos_url
    assert_response :success
  end

  test "should get new" do
    get new_trafo_url
    assert_response :success
  end

  test "should create trafo" do
    assert_difference('Trafo.count') do
      post trafos_url, params: { trafo: { Pcu: @trafo.Pcu, Pferro: @trafo.Pferro, Sn: @trafo.Sn, U1N: @trafo.U1N, U2N: @trafo.U2N, ZT: @trafo.ZT, name: @trafo.name, rT: @trafo.rT } }
    end

    assert_redirected_to trafo_url(Trafo.last)
  end

  test "should show trafo" do
    get trafo_url(@trafo)
    assert_response :success
  end

  test "should get edit" do
    get edit_trafo_url(@trafo)
    assert_response :success
  end

  test "should update trafo" do
    patch trafo_url(@trafo), params: { trafo: { Pcu: @trafo.Pcu, Pferro: @trafo.Pferro, Sn: @trafo.Sn, U1N: @trafo.U1N, U2N: @trafo.U2N, ZT: @trafo.ZT, name: @trafo.name, rT: @trafo.rT } }
    assert_redirected_to trafo_url(@trafo)
  end

  test "should destroy trafo" do
    assert_difference('Trafo.count', -1) do
      delete trafo_url(@trafo)
    end

    assert_redirected_to trafos_url
  end
end
