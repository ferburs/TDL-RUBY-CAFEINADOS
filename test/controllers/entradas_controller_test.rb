require "test_helper"

class EntradasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrada = entradas(:one)
  end

  test "should get index" do
    get entradas_url
    assert_response :success
  end

  test "should get new" do
    get new_entrada_url
    assert_response :success
  end

  test "should create entrada" do
    assert_difference("Entrada.count") do
      post entradas_url, params: { entrada: { funcion_id: @entrada.funcion_id, usuario_id: @entrada.usuario_id } }
    end

    assert_redirected_to entrada_url(Entrada.last)
  end

  test "should show entrada" do
    get entrada_url(@entrada)
    assert_response :success
  end

  test "should get edit" do
    get edit_entrada_url(@entrada)
    assert_response :success
  end

  test "should update entrada" do
    patch entrada_url(@entrada), params: { entrada: { funcion_id: @entrada.funcion_id, usuario_id: @entrada.usuario_id } }
    assert_redirected_to entrada_url(@entrada)
  end

  test "should destroy entrada" do
    assert_difference("Entrada.count", -1) do
      delete entrada_url(@entrada)
    end

    assert_redirected_to entradas_url
  end
end
