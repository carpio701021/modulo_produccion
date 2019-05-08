require "application_system_test_case"

class LecturaContadorsTest < ApplicationSystemTestCase
  setup do
    @lectura_contador = lectura_contadors(:one)
  end

  test "visiting the index" do
    visit lectura_contadors_url
    assert_selector "h1", text: "Lectura Contadors"
  end

  test "creating a Lectura contador" do
    visit lectura_contadors_url
    click_on "New Lectura Contador"

    fill_in "Direccion", with: @lectura_contador.Direccion
    fill_in "Lectura", with: @lectura_contador.Lectura
    fill_in "Numerodecontador", with: @lectura_contador.NumeroDeContador
    click_on "Create Lectura contador"

    assert_text "Lectura contador was successfully created"
    click_on "Back"
  end

  test "updating a Lectura contador" do
    visit lectura_contadors_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @lectura_contador.Direccion
    fill_in "Lectura", with: @lectura_contador.Lectura
    fill_in "Numerodecontador", with: @lectura_contador.NumeroDeContador
    click_on "Update Lectura contador"

    assert_text "Lectura contador was successfully updated"
    click_on "Back"
  end

  test "destroying a Lectura contador" do
    visit lectura_contadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lectura contador was successfully destroyed"
  end
end
