*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open Test Application
    Open Application    http://localhost:4723
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel6Pro
    ...                 app=${EXECDIR}/app/qazandofood.apk
    ...                 udid=emulator-5554

Login fields with valid values
    ${email} =    Set Variable     accessibility_id=email
    Input Text    ${email}    laura.regina@gmail.com
    ${password} =    Set Variable     accessibility_id=password
    Input Text    ${password}    298832

*** Test Cases ***
Log user in application successfully
    Open Test Application
    Sleep    3s
    Login fields with valid values
    Click Element    accessibility_id=login-button
    Element Should Be Visible    android=UiSelector().text("Erro ao realizar login")