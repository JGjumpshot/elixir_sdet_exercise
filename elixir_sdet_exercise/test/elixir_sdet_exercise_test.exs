defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case, async: false
  # Start hound session and destroy when tests are run
  hound_session()
 
  @tag runnable: false
  test "First Name no last name entered" do
    # window_handle = current_window_handle()
    # maximize_window(window_handle)
    counter = :rand.uniform(100)
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
    pop_up = find_element(:css, "#globalContainer > div.uiContextualLayerPositioner._572t.uiLayer > div > div", 5)
    text = visible_text(pop_up)
    assert String.length(text) == 40
  end

  @tag runnable: false
  test "Last Name no first name entered" do
    counter = :rand.uniform(100)
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
    pop_up = find_element(:css, "#globalContainer > div.uiContextualLayerPositioner._572t.uiLayer > div > div", 3)
    text = visible_text(pop_up)
    # IO.puts(String.length(text))
    assert String.length(text) == 40
  end

  @tag runnable: false
  test "First name with random characters" do
    counter = :rand.uniform(100)
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "xcverw")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Gonzalez")
    email_input = "roberto#{counter}@gmail.com"
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
    element = find_element(:css, "#reg_error", 5)
    assert element != nil
  end

  @tag runnable: false
  test "Last name with random characters" do
    counter = :rand.uniform(100)
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Jorge")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "asdfja;lsdf")
    email_input = "robbie#{counter}@gmail.com"
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

    element = find_element(:css, "#reg_error", 5)
    assert element != nil
  end

  @tag runnable: false
  test "Password too short" do
    counter = :rand.uniform(100)
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Greg")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Holmes")
    email_input = "greg#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "1234"
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
    element = find_element(:css, "#reg_error", 5)
    assert element != nil

  end

  @tag runnable: false
  test "Password doesn't meet requirements" do
    counter = :rand.uniform(100)
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Fred")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Vandenberg")
    email_input = "Fred#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "111222"
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

    element = find_element(:css, "#reg_error_inner", 5)
    assert element != nil
  end

  @tag runnable: false
  test "Email without @ symbol" do
    counter = :rand.uniform(100)
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Fred")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Vandenberg")
    email_input = "FredV#{counter}gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    password_input = "111222T@"
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

    pop_up = find_element(:css, "#globalContainer > div.uiContextualLayerPositioner._572t.uiLayer > div > div", 5)
    text = visible_text(pop_up)
    assert String.length(text) == 75

  end
  @tag runnable: false
  test "Email without .com" do
      counter = :rand.uniform(100)
      navigate_to "https://www.facebook.com"
      first_name = find_element(:name, "firstname")
      fill_field(first_name, "Fred")
      last_name = find_element(:name, "lastname")
      fill_field(last_name, "Vandenberg")
      email_input = "FredV#{counter}@gmail"
      email = find_element(:name, "reg_email__")
      fill_field(email, email_input)
      password_input = "111222T@"
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

      pop_up = find_element(:css, "#globalContainer > div.uiContextualLayerPositioner._572t.uiLayer > div > div", 5)
      text = visible_text(pop_up)
      assert String.length(text) == 75   
  end

  @tag runnable: true
  test "sign-up is less than 16 years" do
    counter = :rand.uniform(100)
    navigate_to "https://www.facebook.com"
    first_name = find_element(:name, "firstname")
    fill_field(first_name, "Fred")
    last_name = find_element(:name, "lastname")
    fill_field(last_name, "Vandenberg")
    email_input = "FredV#{counter}@gmail.com"
    email = find_element(:name, "reg_email__")
    fill_field(email, email_input)
    confirm_email = find_element(:name, "reg_email_confirmation__")
    fill_field(confirm_email, email_input)
    password_input = "111222T@"
    password = find_element(:name, "reg_passwd__")
    fill_field(password, password_input)
    #Birthday
    birth_month = find_element(:css, "#month > option:nth-child(2)")
    birth_day = find_element(:css, "#day > option:nth-child(11)")
    birth_year = find_element(:css, "#year > option:nth-child(10)")
    click(birth_month)
    click(birth_day)
    click(birth_year)
    #gender
    select_gender = find_element(:css, "#u_0_s > span:nth-child(2)")
    click(select_gender)
    sign_up_button = find_element(:name, "websubmit")
    click(sign_up_button)
    :timer.sleep(1200)
    pop_up = find_element(:css, ".fsl.fwb.fcb", 5)
    text = visible_text(pop_up)
    assert String.length(text) == 52
  end
end
