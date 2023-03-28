require "test_helper"

class SuperherosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @superhero = superheros(:one)
  end

  test "should get index" do
    get superheros_url, as: :json
    assert_response :success
  end

  test "should create superhero" do
    assert_difference("Superhero.count") do
      post superheros_url, params: { superhero: { name: @superhero.name, superpower: @superhero.superpower } }, as: :json
    end

    assert_response :created
  end

  test "should show superhero" do
    get superhero_url(@superhero), as: :json
    assert_response :success
  end

  test "should update superhero" do
    patch superhero_url(@superhero), params: { superhero: { name: @superhero.name, superpower: @superhero.superpower } }, as: :json
    assert_response :success
  end

  test "should destroy superhero" do
    assert_difference("Superhero.count", -1) do
      delete superhero_url(@superhero), as: :json
    end

    assert_response :no_content
  end
end
