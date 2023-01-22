*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Keywords ***

Open Amaysim site using a browser
    [Arguments]     ${appURL}   ${appbrowser}
    Run Keyword If    '${appbrowser}'=='chrome' or '${appbrowser}'=='headlesschrome'    Open Amaysim site using chrome  ${appURL}   ${appbrowser}
    ...    ELSE IF    '${appbrowser}'=='firefox' or '${appbrowser}'=='headlessfirefox'    Open Amaysim site using firefox  ${appURL}   ${appbrowser}

#Open Amaysim site using chrome
#    [Arguments]     ${appURL}   ${appbrowser}
#    ${chromeOptions}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    ${prefs} =    Create Dictionary    download.default_directory=${EXECDIR}${/}${TD_downloaddirectory_os}
#    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
#    Open Browser    ${appURL}   ${appbrowser}   options=${chromeOptions}    executable_path=${EXECDIR}${/}${TD_executablepathchrome}
#    maximize browser window
#
#Open Amaysim site using firefox
#    [Arguments]     ${appURL}   ${appbrowser}
#    ${ff_options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
#    ${prefs} =    Create Dictionary    download.default_directory=${EXECDIR}${/}${TD_downloaddirectory_os}
#    Call Method    ${ff_options}    add_experimental_option    prefs    ${prefs}
#    Open Browser    ${appURL}   ${appbrowser}   options=${ff_options}    executable_path=${EXECDIR}${/}${TD_executablepathfirefox}
#    maximize browser window

Check Homepage url and should be correct
    [Arguments]     ${appURL}
    ${url}=  Get Location
    should be equal as strings    ${url}    ${appURL}

Click Login Link
    wait until element is visible   ${Loc_LoginLink}
    click element    ${Loc_LoginLink}














