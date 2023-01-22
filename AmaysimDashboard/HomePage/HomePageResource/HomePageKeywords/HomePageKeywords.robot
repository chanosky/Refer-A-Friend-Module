*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Keywords ***

Open Amaysim site using a browser
    [Arguments]     ${appURL}   ${appbrowser}
    ${chromeOptions}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs} =    Create Dictionary    download.default_directory=${EXECDIR}${/}${TD_downloaddirectory_os}
    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    Open Browser    ${appURL}   ${appbrowser}   options=${chromeOptions}
    maximize browser window

Check Homepage url and should be correct
    [Arguments]     ${appURL}
    ${url}=  Get Location
    should be equal as strings    ${url}    ${appURL}

Click Login Link
    wait until element is visible   ${Loc_LoginLink}
    click element    ${Loc_LoginLink}














