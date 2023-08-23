class LoginPage
  # ---------------------- screen elements ----------------------
  def initialize
    @username = ("username")
    @password = ("password")
    @submit = ('.//*[contains(@type, "submit")]')
  end

  attr_accessor :username, :password, :submit

  def login
    $driver.find_element(:name, username).send_keys(DATA['DATA']['LoginUser']['Username'])
    $driver.find_element(:name, password).send_keys(DATA['DATA']['LoginUser']['Password'])
    $driver.find_element(:xpath, submit).click
  end
  
end