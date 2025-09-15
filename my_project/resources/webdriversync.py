from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

def get_webdriver_path():
    driver_path = ChromeDriverManager().install()
    print(f"ChromeDriver path: {driver_path}")
    return driver_path

