*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Keywords ***

Open Amaysim site using chrome
    [Arguments]    ${appURL}   ${appbrowser}
    ${chromeOptions}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs} =    Create Dictionary    download.default_directory=${EXECDIR}${/}${TD_downloaddirectory_os}
    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    Open Browser    ${appURL}   ${appbrowser}   options=${chromeOptions}    executable_path=${EXECDIR}${/}${TD_executablepathchrome}
    maximize browser window

Open Amaysim site using firefox
    [Arguments]    ${appURL}   ${appbrowser}
    ${profile}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxProfile()    sys, selenium.webdriver
    Call Method    ${profile}    set_preference    browser.download.dir    ${EXECDIR}${/}${TD_downloaddirectory_os}
    Call Method    ${profile}    set_preference    browser.download.folderList    2
    Call Method    ${profile}    set_preference    browser.helperApps.neverAsk.saveToDisk    application/zip
    Open Browser    ${appURL}   ${appbrowser}    firefox_profile=${profile}     executable_path=${EXECDIR}${/}${TD_executablepathfirefox}
    maximize browser window