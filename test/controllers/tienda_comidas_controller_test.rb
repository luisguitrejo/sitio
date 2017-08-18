require 'test_helper'

class TiendaComidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tienda_comida = tienda_comidas(:one)
  end

  test "should get index" do
    get tienda_comidas_url
    assert_response :success
  end

  test "should get new" do
    get new_tienda_comida_url
    assert_response :success
  end

  test "should create tienda_comida" do
    assert_difference('TiendaComida.count') do
      post tienda_comidas_url, params: { tienda_comida: { descripcion: @tienda_comida.descripcion, foto: @tienda_comida.foto, nombre: @tienda_comida.nombre, ubicacion: @tienda_comida.ubicacion } }
    end

    assert_redirected_to tienda_comida_url(TiendaComida.last)
  end

  test "should show tienda_comida" do
    get tienda_comida_url(@tienda_comida)
    assert_response :success
  end

  test "should get edit" do
    get edit_tienda_comida_url(@tienda_comida)
    assert_response :success
  end

  test "should update tienda_comida" do
    patch tienda_comida_url(@tienda_comida), params: { tienda_comida: { descripcion: @tienda_comida.descripcion, foto: @tienda_comida.foto, nombre: @tienda_comida.nombre, ubicacion: @tienda_comida.ubicacion } }
    assert_redirected_to tienda_comida_url(@tienda_comida)
  end

  test "should destroy tienda_comida" do
    assert_difference('TiendaComida.count', -1) do
      delete tienda_comida_url(@tienda_comida)
    end

    assert_redirected_to tienda_comidas_url
  end
end
