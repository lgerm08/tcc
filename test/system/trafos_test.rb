require "application_system_test_case"

class TrafosTest < ApplicationSystemTestCase
  setup do
    @trafo = trafos(:one)
  end

  test "visiting the index" do
    visit trafos_url
    assert_selector "h1", text: "Trafos"
  end

  test "creating a Trafo" do
    visit trafos_url
    click_on "New Trafo"

    fill_in "Pcu", with: @trafo.Pcu
    fill_in "Pferro", with: @trafo.Pferro
    fill_in "Sn", with: @trafo.Sn
    fill_in "U1n", with: @trafo.U1N
    fill_in "U2n", with: @trafo.U2N
    fill_in "Zt", with: @trafo.ZT
    fill_in "Name", with: @trafo.name
    fill_in "Rt", with: @trafo.rT
    click_on "Create Trafo"

    assert_text "Trafo was successfully created"
    click_on "Back"
  end

  test "updating a Trafo" do
    visit trafos_url
    click_on "Edit", match: :first

    fill_in "Pcu", with: @trafo.Pcu
    fill_in "Pferro", with: @trafo.Pferro
    fill_in "Sn", with: @trafo.Sn
    fill_in "U1n", with: @trafo.U1N
    fill_in "U2n", with: @trafo.U2N
    fill_in "Zt", with: @trafo.ZT
    fill_in "Name", with: @trafo.name
    fill_in "Rt", with: @trafo.rT
    click_on "Update Trafo"

    assert_text "Trafo was successfully updated"
    click_on "Back"
  end

  test "destroying a Trafo" do
    visit trafos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trafo was successfully destroyed"
  end
end
