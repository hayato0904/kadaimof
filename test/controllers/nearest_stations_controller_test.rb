require 'test_helper'

class NearestStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nearest_station = nearest_stations(:one)
  end

  test "should get index" do
    get nearest_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_nearest_station_url
    assert_response :success
  end

  test "should create nearest_station" do
    assert_difference('NearestStation.count') do
      post nearest_stations_url, params: { nearest_station: { route_name: @nearest_station.route_name, station_name: @nearest_station.station_name, time: @nearest_station.time } }
    end

    assert_redirected_to nearest_station_url(NearestStation.last)
  end

  test "should show nearest_station" do
    get nearest_station_url(@nearest_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_nearest_station_url(@nearest_station)
    assert_response :success
  end

  test "should update nearest_station" do
    patch nearest_station_url(@nearest_station), params: { nearest_station: { route_name: @nearest_station.route_name, station_name: @nearest_station.station_name, time: @nearest_station.time } }
    assert_redirected_to nearest_station_url(@nearest_station)
  end

  test "should destroy nearest_station" do
    assert_difference('NearestStation.count', -1) do
      delete nearest_station_url(@nearest_station)
    end

    assert_redirected_to nearest_stations_url
  end
end
