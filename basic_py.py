import time

from selenium import webdriver

driver = webdriver.Chrome("C:\Python\Python38\Scripts\chromedriver.exe")
driver.get("https://accounts.google.com/")
driver.maximize_window()

name =    driver.find_element_by_xpath("/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div/div[1]/div/div[1]/input")
name.send_keys("def56043@gmail.com")

but1    = driver.find_element_by_xpath("/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button")
but1.click()

pwd =   driver.find_element_by_name("password")
pwd.send_keys("genesis@123")

button  =   driver.find_element_by_class_name("whsOnd zHQkBf")
button.click()

time.sleep(10)
driver.quit()
