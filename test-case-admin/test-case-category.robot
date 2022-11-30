*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://127.0.0.1:8000/login
${Browser}    chrome

*** Keywords ***
Login
    Input Text         //*[@id="email"]    admin@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button
Category-Page
    Open Browser       http://127.0.0.1:8000/login    ${BROWSER} 
    Maximize Browser Window
    Sleep    1s
    Login
    Sleep    1.5s
    Click Element    //*[@id="header"]/nav/ul/li[6]/a
    Sleep    0.5s
    Click Element     //*[@id="header"]/nav/ul/li[6]/ul/li[7]/a
    Sleep    1s

*** Test Cases ***
Test-case category page
    Category-Page


Test-case Add a category
    Category-Page
    Click Element     //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[1]/div/div[2]/a
    Sleep    0.7s
    Input Text     name    new-category
    Input Text     slug    new-category
    Wait Until Element Is Visible    slug
    Choose File      image      C:/Users/AVSKS/Desktop/gogo.png
    Sleep     0.7s
    Click Button    //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep     1s
    Go To     http://127.0.0.1:8000/admin/service-categories
    Sleep     2s
    Close Browser

Test-case update a category
    #Skip
    Category-Page
    Click Element     //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/table/tbody/tr[8]/td[5]/a[1]
    Sleep    0.7s
    Input Text     name    new-category-2       
    Wait Until Element Is Visible    name
    Select From List By Label    featured     Yes
    Click Button     //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser

Test-case delete a category
    Category-Page
    Click Element     //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/table/tbody/tr[8]/td[5]/a[2]
    Handle Alert     accept
    Sleep    2s
    Close Browser        
    
