require "test_helper"

class EphemerisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ephemeri = ephemeris(:one)
  end

  test "should get index" do
    get ephemeris_url
    assert_response :success
  end

  test "should get new" do
    get new_ephemeri_url
    assert_response :success
  end

  test "should create ephemeri" do
    assert_difference('Ephemeri.count') do
      post ephemeris_url, params: { ephemeri: { categoria: @ephemeri.categoria, comentario: @ephemeri.comentario, fecha: @ephemeri.fecha, imagen: @ephemeri.imagen } }
    end

    assert_redirected_to ephemeri_url(Ephemeri.last)
  end

  test "should show ephemeri" do
    get ephemeri_url(@ephemeri)
    assert_response :success
  end

  test "should get edit" do
    get edit_ephemeri_url(@ephemeri)
    assert_response :success
  end

  test "should update ephemeri" do
    patch ephemeri_url(@ephemeri), params: { ephemeri: { categoria: @ephemeri.categoria, comentario: @ephemeri.comentario, fecha: @ephemeri.fecha, imagen: @ephemeri.imagen } }
    assert_redirected_to ephemeri_url(@ephemeri)
  end

  test "should destroy ephemeri" do
    assert_difference('Ephemeri.count', -1) do
      delete ephemeri_url(@ephemeri)
    end

    assert_redirected_to ephemeris_url
  end
end
