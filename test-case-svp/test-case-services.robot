*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL1}     http://127.0.0.1:8000/login
${URL2}     http://127.0.0.1:8000/sprovider/my-services 
${Browser}      chrome

*** Keywords ***
Login
    Input Text         //*[@id="email"]    pompam2@gmail.com
    Input Password      //*[@id="password"]    123456789
    Sleep    1s
    Click Button     //*[@id="userloginform"]/div[3]/div[2]/button

Service-Page
    Open Browser        ${URL1}        ${Browser}
    Maximize Browser Window    
    Sleep        1.5s
    Login
    Go To    ${URL2}
    Sleep        1.5s
    

*** Test Cases ***
Test-case open service page
    Open Browser        ${URL1}        ${Browser}
    Maximize Browser Window    
    Sleep        1.5s
    Login
    Go To    ${URL2}
    Sleep        2s
    Close Browser

test-case add a service
    Service-Page
    Click Element        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div/div[1]/div/div[2]/a
    Sleep        1s
    Input Text        name        pompam-service
    Input Text        tagline        good
    Select From List By Label      //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[4]/div/select     CAT
    Input Text      //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input      200
    Input Text       //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[8]/div/textarea        description
    Input Text        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[9]/div/textarea        free foods
    Input Text        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[10]/div/textarea        roles
    Choose File       thumbnail     C:/xampp/htdocs/laravel-app/public/images/services/1634106473.jpg
    Choose File        image         C:/xampp/htdocs/laravel-app/public/images/services/1634106473.jpg
    Sleep    2s
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button   
    Sleep        2s
    Close Browser

test-case edit service
    Service-Page
    Click Element        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div/div[2]/div/div/table/tbody/tr[3]/td[7]/a[1]
    Sleep    1.5s
    Input Text        tagline        very well
    Input Text        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/div[5]/div/input        280
    Sleep    1s
    Click Button        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div[2]/form/button
    Sleep    2s
    Close Browser

test-case delete service
    Service-Page
    Click Element        //*[@id="layout"]/div[3]/section/div/div/div/div/div/div/div/div[2]/div/div/table/tbody/tr[3]/td[7]/a[2]
    Sleep    0.7s
    Handle Alert        accept
    Sleep    2s
    Close Browser

