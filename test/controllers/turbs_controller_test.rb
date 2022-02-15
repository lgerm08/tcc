require "test_helper"

class TurbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turb = turbs(:one)
  end

  test "should get index" do
    get turbs_url
    assert_response :success
  end

  test "should get new" do
    get new_turb_url
    assert_response :success
  end

  test "should create turb" do
    assert_difference('Turb.count') do
      post turbs_url, params: { turb: { Pmin: @turb.Pmin, name: @turb.name } }
    end

    assert_redirected_to turb_url(Turb.last)
  end

  test "should show turb" do
    get turb_url(@turb)
    assert_response :success
  end

  test "should get edit" do
    get edit_turb_url(@turb)
    assert_response :success
  end

  test "should update turb" do
    patch turb_url(@turb), params: { turb: { Pmin: @turb.Pmin, name: @turb.name } }
    assert_redirected_to turb_url(@turb)
  end

  test "should destroy turb" do
    assert_difference('Turb.count', -1) do
      delete turb_url(@turb)
    end

    assert_redirected_to turbs_url
  end
end
