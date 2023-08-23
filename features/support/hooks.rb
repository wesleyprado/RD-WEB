Before do
  $driver = Selenium::WebDriver.for :chrome
  $driver.manage.window.maximize
  @register ||= RegisterADMPage.new
  @home ||= HomePage.new
  @login ||= LoginPage.new
end

After do
  $driver.quit
end