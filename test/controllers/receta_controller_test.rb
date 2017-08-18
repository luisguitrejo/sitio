require 'test_helper'

class RecetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recetum = receta(:one)
  end

  test "should get index" do
    get receta_url
    assert_response :success
  end

  test "should get new" do
    get new_recetum_url
    assert_response :success
  end

  test "should create recetum" do
    assert_difference('Recetum.count') do
      post receta_url, params: { recetum: { foto: @recetum.foto, ingredientes: @recetum.ingredientes, nombre: @recetum.nombre, procedimiento: @recetum.procedimiento } }
    end

    assert_redirected_to recetum_url(Recetum.last)
  end

  test "should show recetum" do
    get recetum_url(@recetum)
    assert_response :success
  end

  test "should get edit" do
    get edit_recetum_url(@recetum)
    assert_response :success
  end

  test "should update recetum" do
    patch recetum_url(@recetum), params: { recetum: { foto: @recetum.foto, ingredientes: @recetum.ingredientes, nombre: @recetum.nombre, procedimiento: @recetum.procedimiento } }
    assert_redirected_to recetum_url(@recetum)
  end

  test "should destroy recetum" do
    assert_difference('Recetum.count', -1) do
      delete recetum_url(@recetum)
    end

    assert_redirected_to receta_url
  end
end
