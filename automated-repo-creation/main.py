from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

username = input("nom d'utilisateur github : ")
password = input("mot de passe github : ")
repository = input("nom du repo à créer : ")

driver = webdriver.Firefox()
driver.get("https://github.com/login")
elem_username = driver.find_element_by_id("login_field")
elem_username.clear()
elem_username.send_keys(str(username))

elem_pass = driver.find_element_by_id("password")
elem_pass.clear()
elem_pass.send_keys(str(password))

submit_btn = driver.find_element_by_name("commit")
submit_btn.send_keys(Keys.RETURN)
time.sleep(2)

driver.get("https://github.com/new")
repo_name = driver.find_element_by_id("repository_name")
repo_name = repo_name.send_keys(str(repository))
time.sleep(2)

submit_btn = driver.find_element_by_class_name("btn-primary")
submit_btn.send_keys(Keys.RETURN)
time.sleep(2)

driver.close()
print("Le script s'est exécuté correctement.")
