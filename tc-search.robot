*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${url}        http://127.0.0.1:8000

*** Keywords ***

*** Test Cases ***
TC001
    
    Open Browser        ${url}       ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Input Text    //*[@id="q"]    aa-001
    Sleep    2s
    Click Button    //*[@id="sform"]/input[3]
    Sleep    3s
    Close Browser

tc-test
    Open Browser    http://127.0.0.1:8000/    ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Click Element    xpath=(//div)[8]
    Click Link    //a[@title="Login"]
    Input Text    //input[@name="email"]    jojo@gmail.com
    Input Text    //input[@name="password"]    123456789
    Sleep    2s
    Click Element    //button[@class="btn btn-primary pull-right"]
    Click Link    //a[@title="Register"]
    Click Link    //a[@href="http://127.0.0.1:8000/pet-all"]
    Click Link    //a[@href="http://127.0.0.1:8000/pet/add"]
    Input Text    //input[@name="name"]    Cut-Pet
    Input Text    //input[@name="pet_type"]    dog
    Input Text    //input[@name="age"]    1y
    Input Text    //input[@name="weight"]    5 kg.
    Sleep    2s
    Choose File    //input[@name="pet_image"]    C:/Users/AVSKS/Desktop/Rb-fm-test/img/test.png
    Sleep    3s
    Click Element    //button[@class="btn btn-success pull-right"]
    Sleep    2s
    Click Link    xpath=(//a[@href="http://127.0.0.1:8000/pet-all"])[2]
    Sleep    3s
    Close Browser