require 'test_helper'

class ArtesaniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artesanium = artesania(:one)
  end

  test "should get index" do
    get artesania_url
    assert_response :success
  end

  test "should get new" do
    get new_artesanium_url
    assert_response :success
  end

  test "should create artesanium" do
    assert_difference('Artesanium.count') do
      post artesania_url, params: { artesanium: { descripcion: @artesanium.descripcion, foto: @artesanium.foto, precio: @artesanium.precio } }
    end

    assert_redirected_to artesanium_url(Artesanium.last)
  end

  test "should show artesanium" do
    get artesanium_url(@artesanium)
    assert_response :success
  end

  test "should get edit" do
    get edit_artesanium_url(@artesanium)
    assert_response :success
  end

  test "should update artesanium" do
    patch artesanium_url(@artesanium), params: { artesanium: { descripcion: @artesanium.descripcion, foto: @artesanium.foto, precio: @artesanium.precio } }
    assert_redirected_to artesanium_url(@artesanium)
  end

  test "should destroy artesanium" do
    assert_difference('Artesanium.count', -1) do
      delete artesanium_url(@artesanium)
    end

    assert_redirected_to artesania_url
  end
end
