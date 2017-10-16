import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys


class TestStartPythonClub(unittest.TestCase):
    def test_GoogleでみんなのPython勉強会を検索する(self):
        browser = webdriver.Chrome()
        browser.get('https://google.co.jp')
        query_input = browser.find_element_by_name('q')
        query_input.send_keys('みんなのPython勉強会' + Keys.ENTER)
        # 結果出力と検証
        links = browser.find_elements_by_css_selector('h3 > a')
        for link in links:
            print(link.text)
        self.assertEqual(len(links), 10)


if __name__ == '__main__':
    unittest.main()
