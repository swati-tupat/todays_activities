import time

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.expected_conditions import presence_of_element_located
from selenium.webdriver.common.by import By

driver = webdriver.Chrome("C:\Python\Python38\Scripts\chromedriver.exe")
driver.get("https://www.google.com")
driver.maximize_window()
driver.find_element_by_name("q").send_keys('Linkedin Login')
driver.find_element_by_name("q").send_keys(Keys.ENTER)
driver.find_element_by_partial_link_text("LinkedIn Login").click()
driver.find_element_by_id("username").send_keys("-enter username--")
driver.find_element_by_id("password").send_keys("--enter password-")
driver.find_element_by_tag_name("button").click()
time.sleep(2)
driver.quit()
