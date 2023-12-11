require "test_helper"

class PokemonProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_project_index_url
    assert_response :success
  end
end
