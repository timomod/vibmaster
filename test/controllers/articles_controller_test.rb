require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get articles_home_url
    assert_response :success
  end

  test "should get press" do
    get articles_press_url
    assert_response :success
  end

  test "should get casestudies" do
    get articles_casestudies_url
    assert_response :success
  end

  test "should get science" do
    get articles_science_url
    assert_response :success
  end

  test "should get standards_glossary" do
    get articles_standards_glossary_url
    assert_response :success
  end

  test "should get factsheets" do
    get articles_factsheets_url
    assert_response :success
  end

  test "should get manuals" do
    get articles_manuals_url
    assert_response :success
  end

end
