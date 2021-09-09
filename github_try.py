# import Module
from selenium import webdriver
import time
#import HtmlTestRunner


# Create Chrome Object
driver = webdriver.Chrome()
driver.implicitly_wait(20)

# Open github login page
driver.get('https://github.com/login')
driver.maximize_window()
# Username
username = driver.find_element_by_xpath('//*[@id="login_field"]')
username.send_keys('----enter username-----')

# Password
password = driver.find_element_by_xpath('//*[@id="password"]')
password.send_keys('---enter password----')

# Click on sigin button
sigin = driver.find_element_by_xpath('/html/body/div[3]/main/div/div[4]/form/div/input[12]')
sigin.click()

# Create new repo.
new_Repo = driver.find_element_by_link_text("New").click()

# Enter Repo. name
repositoryname = driver.find_element_by_id('repository_name')
repositoryname.send_keys('trial')

repo_descr = driver.find_element_by_id('repository_description')
repo_descr.send_keys("trial repo")

create_repo = driver.find_element_by_xpath('/html/body/div[4]/main/div/form/div[4]/button')
create_repo.click()
time.sleep(5)

#testRunner  = HtmlTestRunner.HTMLTestRunner(output='C:/Users/Swati/PycharmProjects/sample/automation/output')