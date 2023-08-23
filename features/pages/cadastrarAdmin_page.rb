class RegisterADMPage
  # ---------------------- screen elements ----------------------
  def initialize
    @btnAddUser = ("//button[@type='button'][contains(.,'Add')]")
    @btnClose = ("/html[1]/body[1]/div[1]/div[1]/div[1]/aside[1]/nav[1]/div[2]/div[1]/div[1]/button[1]")
    @listUserRole = ("/html[1]/body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]")
    @optAdmin = ("//div[@role='listbox'][contains(.,'Admin')]")
    @listStatus = ("//div[@class='oxd-select-text oxd-select-text--active'][contains(.,'-- Select --')]")
    @optEnabled = ("//div[@role='listbox'][contains(.,'Enabled')]")
    @fldEmplName = ("//input[contains(@placeholder,'Type for hints...')]")
    @listEmp = ("//div[@role='listbox'][contains(.,'Odis')]")
    @fldUsername = ("(//input[contains(@class,'oxd-input oxd-input--active')])[2]")
    @fldPassword = ("/html[1]/body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[1]/div[1]/div[2]/input[1]")
    @fldPasswordCheck = ("/html[1]/body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/div[1]/div[2]/input[1]")
    @btnSubmit = ("//button[@type='submit'][contains(.,'Save')]")
    @btnSearch = ("//button[@type='submit'][contains(.,'Search')]")
    @btnDelete = ("//i[contains(@class,'oxd-icon bi-trash')]")
    @btnConfirm = ("//button[@type='button'][contains(.,'Yes, Delete')]")   
  end

  attr_accessor :btnAddUser, :listUserRole, :optAdmin, :listStatus, :optEnabled, :fldEmplName, :fldUsername,
   :fldPassword, :fldPasswordCheck, :btnSubmit, :btnSearch, :btnDelete, :btnConfirm, :btnClose, :listEmp


  def goToAddPage
    $driver.find_element(:xpath, btnAddUser).click
    sleep(3)
  end

  def addNewUser
    $driver.find_element(:xpath, btnClose).click
    $driver.find_element(:xpath, listUserRole).click
    $driver.find_element(:xpath, optAdmin).click
    $driver.find_element(:xpath, listStatus).click
    $driver.find_element(:xpath, optEnabled).click
    $driver.find_element(:xpath, fldEmplName).send_keys(DATA['DATA']['NewUser']['EmployeeName'])
    sleep(2)
    $driver.find_element(:xpath, listEmp).click
    $driver.find_element(:xpath, fldUsername).send_keys(DATA['DATA']['NewUser']['Username'])
    $driver.find_element(:xpath, fldPassword).send_keys(DATA['DATA']['NewUser']['Password'])
    $driver.find_element(:xpath, fldPasswordCheck).send_keys(DATA['DATA']['NewUser']['Password'])
    $driver.find_element(:xpath, btnSubmit).click
    sleep(5)
  end

  def searchUser
    $driver.find_element(:xpath, fldUsername).send_keys(DATA['DATA']['NewUser']['Username'])
    $driver.find_element(:xpath, btnSearch).click
    sleep(3)
  end
  
  def deleteUser
    $driver.find_element(:xpath, btnDelete).click
    $driver.find_element(:xpath, btnConfirm).click
  end
end