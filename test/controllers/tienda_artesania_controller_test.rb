require 'test_helper'

class TiendaArtesaniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tienda_artesanium = tienda_artesania(:one)
  end

  test "should get index" do
    get tienda_artesania_url
    assert_response :success
  end

  test "should get new" do
    get new_tienda_artesanium_url
    assert_response :success
  end

  test "should create tienda_artesanium" do
    assert_difference('TiendaArtesanium.count') do
      post tienda_artesania_url, params: { tienda_artesanium: { descripcion: @tienda_artesanium.descripcion, foto: @tienda_artesanium.foto, nombre: @tienda_artesanium.nombre, ubicacion: @tienda_artesanium.ubicacion } }
    end

    assert_redirected_to tienda_artesanium_url(TiendaArtesanium.last)
  end

  test "should show tienda_artesanium" do
    get tienda_artesanium_url(@tienda_artesanium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tienda_artesanium_url(@tienda_artesanium)
    assert_response :success
  end

  test "should update tienda_artesanium" do
    patch tienda_artesanium_url(@tienda_artesanium), params: { tienda_artesanium: { descripcion: @tienda_artesanium.descripcion, foto: @tienda_artesanium.foto, nombre: @tienda_artesanium.nombre, ubicacion: @tienda_artesanium.ubicacion } }
    assert_redirected_to tienda_artesanium_url(@tienda_artesanium)
  end

  test "should destroy tienda_artesanium" do
    assert_difference('TiendaArtesanium.count', -1) do
      delete tienda_artesanium_url(@tienda_artesanium)
    end

    assert_redirected_to tienda_artesania_url
  end
end
