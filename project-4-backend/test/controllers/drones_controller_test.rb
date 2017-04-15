require 'test_helper'

class DronesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drone = drones(:one)
  end

  test "should get index" do
    get drones_url, as: :json
    assert_response :success
  end

  test "should create drone" do
    assert_difference('Drone.count') do
      post drones_url, params: { drone: { name: @drone.name, photo: @drone.photo, skills: @drone.skills, speed: @drone.speed, user_id: @drone.user_id, weight: @drone.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show drone" do
    get drone_url(@drone), as: :json
    assert_response :success
  end

  test "should update drone" do
    patch drone_url(@drone), params: { drone: { name: @drone.name, photo: @drone.photo, skills: @drone.skills, speed: @drone.speed, user_id: @drone.user_id, weight: @drone.weight } }, as: :json
    assert_response 200
  end

  test "should destroy drone" do
    assert_difference('Drone.count', -1) do
      delete drone_url(@drone), as: :json
    end

    assert_response 204
  end
end
