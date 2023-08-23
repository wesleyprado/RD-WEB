class HomePage
  # ---------------------- screen elements ----------------------
  def initialize
    @pgAdm = ("//a[@class='oxd-main-menu-item'][contains(.,'Admin')]")
  end

  attr_accessor :pgAdm

  def addAdm
    $driver.find_element(:xpath, pgAdm).click
    sleep(2)
  end
  
end