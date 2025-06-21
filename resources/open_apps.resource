*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open Android Test Application
    Open Application    http://localhost:4723
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Pixel6Pro
    ...    app=${EXECDIR}/apps/qazandofood.apk
    ...    udid=emulator-5554

Open iOS Test Application
    Open Application    http://localhost:4723
    ...    automationName=XCUITest
    ...    platformName=iOS
    ...    deviceName=iPhone 13 Pro
    ...    app=${EXECDIR}/apps/qazandoqafood.app
    ...    udid=B9FF531D-3FB4-4FDC-A103-306C1928A863