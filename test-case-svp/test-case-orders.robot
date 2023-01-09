*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        https://petsarakham-online.tech/login

*** Keywords ***
Login
    Input Text         //*[@id="email"]    service-tester@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button 

*** Test Cases ***
Test-case confirm order
    Open Browser        ${url}        ${BROWSER}
	Maximize Browser Window
	Sleep        1.5s
	Login
	Sleep        1.5s
	Go To        https://petsarakham-online.tech/sprovider-orders
	Sleep        1.5s
    Click Element        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/div/div/table/tbody/tr/td[8]/a[1]        
	Handle Alert        accept
	Sleep        2s
	Close Browser


Test-case cancel-order
    Open Browser        ${url}        ${BROWSER}
	Maximize Browser Window
	Sleep        1.5s
	Login
	Sleep        1.5s
	Go To        https://petsarakham-online.tech/sprovider-orders
	Sleep        1.5s
    Click Element        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/div/div/table/tbody/tr/td[8]/a[2]        
	Handle Alert        accept
	Sleep        2s
	Close Browser