require 'test_helper'

class LecturaContadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lectura_contador = lectura_contadors(:one)
  end

  test "should get index" do
    get lectura_contadors_url
    assert_response :success
  end

  test "should get new" do
    get new_lectura_contador_url
    assert_response :success
  end

  test "should create lectura_contador" do
    assert_difference('LecturaContador.count') do
      post lectura_contadors_url, params: { lectura_contador: { Direccion: @lectura_contador.Direccion, Lectura: @lectura_contador.Lectura, NumeroDeContador: @lectura_contador.NumeroDeContador } }
    end

    assert_redirected_to lectura_contador_url(LecturaContador.last)
  end

  test "should show lectura_contador" do
    get lectura_contador_url(@lectura_contador)
    assert_response :success
  end

  test "should get edit" do
    get edit_lectura_contador_url(@lectura_contador)
    assert_response :success
  end

  test "should update lectura_contador" do
    patch lectura_contador_url(@lectura_contador), params: { lectura_contador: { Direccion: @lectura_contador.Direccion, Lectura: @lectura_contador.Lectura, NumeroDeContador: @lectura_contador.NumeroDeContador } }
    assert_redirected_to lectura_contador_url(@lectura_contador)
  end

  test "should destroy lectura_contador" do
    assert_difference('LecturaContador.count', -1) do
      delete lectura_contador_url(@lectura_contador)
    end

    assert_redirected_to lectura_contadors_url
  end
end
