require "test_helper"

class GensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gen = gens(:one)
  end

  test "should get index" do
    get gens_url
    assert_response :success
  end

  test "should get new" do
    get new_gen_url
    assert_response :success
  end

  test "should create gen" do
    assert_difference('Gen.count') do
      post gens_url, params: { gen: { If0: @gen.If0, Ifn: @gen.Ifn, PF: @gen.PF, Pferro: @gen.Pferro, Pmec: @gen.Pmec, Psup: @gen.Psup, Pven: @gen.Pven, SN: @gen.SN, UN: @gen.UN, Uf0: @gen.Uf0, Ufn: @gen.Ufn, Xd: @gen.Xd, Xq: @gen.Xq, k_exm: @gen.k_exm, k_prl: @gen.k_prl, name: @gen.name, ra: @gen.ra } }
    end

    assert_redirected_to gen_url(Gen.last)
  end

  test "should show gen" do
    get gen_url(@gen)
    assert_response :success
  end

  test "should get edit" do
    get edit_gen_url(@gen)
    assert_response :success
  end

  test "should update gen" do
    patch gen_url(@gen), params: { gen: { If0: @gen.If0, Ifn: @gen.Ifn, PF: @gen.PF, Pferro: @gen.Pferro, Pmec: @gen.Pmec, Psup: @gen.Psup, Pven: @gen.Pven, SN: @gen.SN, UN: @gen.UN, Uf0: @gen.Uf0, Ufn: @gen.Ufn, Xd: @gen.Xd, Xq: @gen.Xq, k_exm: @gen.k_exm, k_prl: @gen.k_prl, name: @gen.name, ra: @gen.ra } }
    assert_redirected_to gen_url(@gen)
  end

  test "should destroy gen" do
    assert_difference('Gen.count', -1) do
      delete gen_url(@gen)
    end

    assert_redirected_to gens_url
  end
end
