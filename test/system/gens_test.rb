require "application_system_test_case"

class GensTest < ApplicationSystemTestCase
  setup do
    @gen = gens(:one)
  end

  test "visiting the index" do
    visit gens_url
    assert_selector "h1", text: "Gens"
  end

  test "creating a Gen" do
    visit gens_url
    click_on "New Gen"

    fill_in "If0", with: @gen.If0
    fill_in "Ifn", with: @gen.Ifn
    fill_in "Pf", with: @gen.PF
    fill_in "Pferro", with: @gen.Pferro
    fill_in "Pmec", with: @gen.Pmec
    fill_in "Psup", with: @gen.Psup
    fill_in "Pven", with: @gen.Pven
    fill_in "Sn", with: @gen.SN
    fill_in "Un", with: @gen.UN
    fill_in "Uf0", with: @gen.Uf0
    fill_in "Ufn", with: @gen.Ufn
    fill_in "Xd", with: @gen.Xd
    fill_in "Xq", with: @gen.Xq
    fill_in "K exm", with: @gen.k_exm
    fill_in "K prl", with: @gen.k_prl
    fill_in "Name", with: @gen.name
    fill_in "Ra", with: @gen.ra
    click_on "Create Gen"

    assert_text "Gen was successfully created"
    click_on "Back"
  end

  test "updating a Gen" do
    visit gens_url
    click_on "Edit", match: :first

    fill_in "If0", with: @gen.If0
    fill_in "Ifn", with: @gen.Ifn
    fill_in "Pf", with: @gen.PF
    fill_in "Pferro", with: @gen.Pferro
    fill_in "Pmec", with: @gen.Pmec
    fill_in "Psup", with: @gen.Psup
    fill_in "Pven", with: @gen.Pven
    fill_in "Sn", with: @gen.SN
    fill_in "Un", with: @gen.UN
    fill_in "Uf0", with: @gen.Uf0
    fill_in "Ufn", with: @gen.Ufn
    fill_in "Xd", with: @gen.Xd
    fill_in "Xq", with: @gen.Xq
    fill_in "K exm", with: @gen.k_exm
    fill_in "K prl", with: @gen.k_prl
    fill_in "Name", with: @gen.name
    fill_in "Ra", with: @gen.ra
    click_on "Update Gen"

    assert_text "Gen was successfully updated"
    click_on "Back"
  end

  test "destroying a Gen" do
    visit gens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gen was successfully destroyed"
  end
end
