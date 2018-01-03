require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  setup -> { @base_title = 'Ruby on Rails Tutorial Sample App' }

  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  def assert_title(title)
    assert_select 'title', title
  end

  test 'should get root' do
    get root_url
    assert_response :success
    assert_title("Home | #{@base_title}")
  end

  test 'should get home' do
    get static_pages_home_url
    assert_response :success
    assert_title("Home | #{@base_title}")
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
    assert_title("Help | #{@base_title}")
  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success
    assert_title("About | #{@base_title}")
  end

  test 'should get contact' do
    get static_pages_contact_url
    assert_response :success
    assert_title("Contact | #{@base_title}")
  end
end
