*** Settings ***
Library     AppiumLibrary

*** Variables ***
${IOS_EMAIL}       name=email
${IOS_PASSWORD}    name=password

${AND_EMAIL}       accessibility_id=email
${AND_PASSWORD}    accessibility_id=password

${LOGIN_BUTTON}    accessibility_id=login-button

*** Keywords ***

Login with wrong credentials
    [Arguments]    ${PLATFORM_NAME}

    IF    "${PLATFORM_NAME}" == "Android"
        Input Text    ${AND_EMAIL}    vic.regina@gmail.com
        Input Text    ${AND_PASSWORD}    298832
    ELSE
        Input Text    ${IOS_EMAIL}    vic.regina@gmail.com
        Input Text    ${IOS_PASSWORD}    298832
    END

    Click Element    ${LOGIN_BUTTON}

Login with right credentials
    [Arguments]    ${PLATFORM_NAME}

    IF    "${PLATFORM_NAME}" == "Android"
        Input Text    ${AND_EMAIL}    teste@teste.com
        Input Text    ${AND_PASSWORD}    123456
    ELSE
        Input Text    ${IOS_EMAIL}    teste@teste.com
        Input Text    ${IOS_PASSWORD}    123456
    END

    Click Element    ${LOGIN_BUTTON}
