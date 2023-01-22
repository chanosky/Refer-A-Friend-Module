*** Settings ***
Resource    ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalResource/GlobalSettings.robot

*** Variables ***



*** Test Cases ***
#User should be able to navigate to Refer a friend Page
#    Open Amaysim site using a browser   ${DEVhomepageurl}   ${TD_browser}
#    Check Homepage Url and should be correct      ${DEVhomepageurl}
#    Click Login Link
#    Input User Credentials  ${TD_username}     ${TD_password}
#    Navigate to My Account Page
#    Navigate to Data Plan Page
#    Navigate to Refer a friend Page

User should be able to verify Refer a friend contents
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Verify Refer a friend contents
    Close browser

User should be able to verify Refer a friend contents after sharing
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Click Messenger icon
    Navigate to New Window  ${TD_facebook}
    Verify Refer a friend contents after sharing
    Close browser

Verify that user should be able to copy referral link
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Copy referral link
    Close browser

Verify that user should be able to download Terms file
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Click Terms link
    Close browser

Verify that user should not be able to share by using an invalid email
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Enter text in the personalized message textbox
    User enters invalid email and validate
    Close browser

Verify that user should not be able to share by using an blank message
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Enter valid email in the send email textbox
    User enters blank text and validate
    Close browser

Verify that user should be able to share using to Messenger
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Click Messenger icon
    Navigate to New Window  ${TD_facebook}
    Verify Refer a friend contents after sharing
    Close browser

Verify that user should be able to share using to Facebook
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Click Facebook icon
    Navigate to New Window  ${TD_facebook}
    Verify Refer a friend contents after sharing
    Close browser

Verify that user should be able to share using to Twitter
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Click Twitter icon
    Navigate to New Window  ${TD_twitter}
    Verify Refer a friend contents after sharing
    Close browser

Verify that user should be able to go back to share page after clicking share again button
    Open Amaysim site using a browser   ${TD_DEVhomepageurl}   ${TD_browser}
    Check Homepage Url and should be correct      ${TD_DEVhomepageurl}
    Click Login Link
    Input User Credentials  ${TD_username}     ${TD_password}
    Navigate to My Account Page
    Navigate to Data Plan Page
    Navigate to Refer a friend Page
    Click Messenger icon
    Navigate to New Window  ${TD_facebook}
    Verify Refer a friend contents after sharing
    Click Share Again button
    Verify Refer a friend contents
    Close browser