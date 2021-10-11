require "application_system_test_case"

class EphemerisTest < ApplicationSystemTestCase
  setup do
    @ephemeri = ephemeris(:one)
  end

  test "visiting the index" do
    visit ephemeris_url
    assert_selector "h1", text: "Ephemeris"
  end

  test "creating a Ephemeri" do
    visit ephemeris_url
    click_on "New Ephemeri"

    fill_in "Categoria", with: @ephemeri.categoria
    fill_in "Comentario", with: @ephemeri.comentario
    fill_in "Fecha", with: @ephemeri.fecha
    fill_in "Imagen", with: @ephemeri.imagen
    click_on "Create Ephemeri"

    assert_text "Ephemeri was successfully created"
    click_on "Back"
  end

  test "updating a Ephemeri" do
    visit ephemeris_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @ephemeri.categoria
    fill_in "Comentario", with: @ephemeri.comentario
    fill_in "Fecha", with: @ephemeri.fecha
    fill_in "Imagen", with: @ephemeri.imagen
    click_on "Update Ephemeri"

    assert_text "Ephemeri was successfully updated"
    click_on "Back"
  end

  test "destroying a Ephemeri" do
    visit ephemeris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ephemeri was successfully destroyed"
  end
end
