*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000
*** Keywords ***
Login
  Input Text   id:email     jojo
  Input Password    id:password      1234

*** Test Cases *** 
