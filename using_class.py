from selenium import webdriver
import unittest

class googlesearch(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.driver  = webdriver.Chrome()
        cls.driver.implicitly_wait(10)
        cls.driver.maximize_window()

    def test_search(self):
        self.driver.get("https://www.google.com")
        self.driver.find_element_by_name("q").send_keys("hello")
        self.driver.find_element_by_name("btnK").click()

    def test_search2(self):
        self.driver.get("https://www.google.com")
        self.driver.find_element_by_name("q").send_keys("swati")
        self.driver.find_element_by_name("btnK").click()

    @classmethod
    def tearDownClass(cls):
        cls.driver.close()
        cls.driver.quit()
        print("done.")