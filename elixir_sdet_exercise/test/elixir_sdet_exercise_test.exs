defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()


  @tag runnable: false
  test "First Name no last name entered" do
    # window_handle = current_window_handle()
    # maximize_window(window_handle)
    counter = 50
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Samuel")
    # last_name = find_element(:name, "lastname")
    # fill_field(last_name, "Gonzalez")
    email_input = "rob#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "123456Test"
    password = find_element(:name, "reg_passwd__")
    fill_field(password, password_input)
    #Birthday
    birth_month = find_element(:css, "#month > option:nth-child(5)")
    birth_day = find_element(:css, "#day > option:nth-child(25)")
    birth_year = find_element(:css, "#year > option:nth-child(22)")
    click(birth_month)
    click(birth_day)
    click(birth_year)
    #gender
    select_gender = find_element(:css, "#u_0_s > span:nth-child(2)")
    click(select_gender)
    sign_up_button = find_element(:name, "websubmit")
    click(sign_up_button)
    pop_up = find_element(:css, "#globalContainer > div.uiContextualLayerPositioner._572t.uiLayer > div > div")
    text = visible_text(pop_up)
    # IO.puts(String.length(text))
    assert String.length(text) == 40
  end

  @tag runnable: false
  test "Last Name no first name entered" do
    counter = 57
    navigate_to "https://www.facebook.com"
    # first_name = find_element(:name, "firstname")
    # fill_field(first_name, "Samuel")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Gonzalez")
    email_input = "rob#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "123456Test"
    password = find_element(:name, "reg_passwd__")
    fill_field(password, password_input)
    #Birthday
    birth_month = find_element(:css, "#month > option:nth-child(5)")
    birth_day = find_element(:css, "#day > option:nth-child(25)")
    birth_year = find_element(:css, "#year > option:nth-child(22)")
    click(birth_month)
    click(birth_day)
    click(birth_year)
    #gender
    select_gender = find_element(:css, "#u_0_s > span:nth-child(2)")
    click(select_gender)
    sign_up_button = find_element(:name, "websubmit")
    click(sign_up_button)
    pop_up = find_element(:css, "#globalContainer > div.uiContextualLayerPositioner._572t.uiLayer > div > div")
    text = visible_text(pop_up)
    # IO.puts(String.length(text))
    assert String.length(text) == 40
  end

  @tag runnable: false
  test "First name with random characters" do
    counter = 56
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "xcverw")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Gonzalez")
    email_input = "rob#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "123456Test"
    password = find_element(:name, "reg_passwd__")
    fill_field(password, password_input)
    #Birthday
    birth_month = find_element(:css, "#month > option:nth-child(5)")
    birth_day = find_element(:css, "#day > option:nth-child(25)")
    birth_year = find_element(:css, "#year > option:nth-child(22)")
    click(birth_month)
    click(birth_day)
    click(birth_year)
    #gender
    select_gender = find_element(:css, "#u_0_s > span:nth-child(2)")
    click(select_gender)
    sign_up_button = find_element(:name, "websubmit")
    click(sign_up_button)
    # :timer.sleep(3000)
    # pop_up= find_element(:id, "#reg_error_inner")
    # text = visible_text(pop_up)
    # IO.puts(String.length(text))
    # assert String.length(text) == 40
    :timer.sleep(10000)
  end

  @tag runnable: true
  test "Last name with random characters" do
    counter = 60
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Jorge")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "asdfja;lsdf")
    email_input = "rob#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "123456Test"
    password = find_element(:name, "reg_passwd__")
    fill_field(password, password_input)
    #Birthday
    birth_month = find_element(:css, "#month > option:nth-child(5)")
    birth_day = find_element(:css, "#day > option:nth-child(25)")
    birth_year = find_element(:css, "#year > option:nth-child(22)")
    click(birth_month)
    click(birth_day)
    click(birth_year)
    #gender
    select_gender = find_element(:css, "#u_0_s > span:nth-child(2)")
    click(select_gender)
    sign_up_button = find_element(:name, "websubmit")
    click(sign_up_button)
    # assert element?(:id, "#reg_error_inner") == true
    # :timer.sleep(10000)
    end
end
