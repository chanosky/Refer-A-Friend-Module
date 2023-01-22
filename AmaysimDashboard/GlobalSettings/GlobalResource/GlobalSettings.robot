*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  OperatingSystem

#Global
Variables   ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalTestData/GlobalTestData.py
Resource   ${EXECDIR}/AmaysimDashboard/GlobalSettings/GlobalKeywords/GlobalKeywordsSupport.robot

#HomePage
Variables   ${EXECDIR}/AmaysimDashboard/HomePage/HomePageResource/HomePageLocators/HomePageLocators.py
Variables   ${EXECDIR}/AmaysimDashboard/HomePage/HomePageResource/HomePageTestData/HomePageTestData.py
Resource    ${EXECDIR}/AmaysimDashboard/HomePage/HomePageResource/HomePageKeywords/HomePageKeywords.robot

#LoginPage
Variables   ${EXECDIR}/AmaysimDashboard/LoginPage/LoginPageResource/LoginPageLocators/LoginPageLocators.py
Variables   ${EXECDIR}/AmaysimDashboard/LoginPage/LoginPageResource/LoginPageTestData/LoginPageTestData.py
Resource    ${EXECDIR}/AmaysimDashboard/LoginPage/LoginPageResource/LoginPageKeywords/LoginPageKeywords.robot

#MyAccountPage
Variables   ${EXECDIR}/AmaysimDashboard/MyAccountPage/MyAccountPageResource/MyAccountPageLocators/MyAccountPageLocators.py
Variables   ${EXECDIR}/AmaysimDashboard/MyAccountPage/MyAccountPageResource/MyAccountPageTestData/MyAccountPageTestData.py
Resource    ${EXECDIR}/AmaysimDashboard/MyAccountPage/MyAccountPageResource/MyAccountPageKeywords/MyAccountPageKeywords.robot

#DataPlanPage
Variables   ${EXECDIR}/AmaysimDashboard/DataPlanPage/DataPlanPageResource/DataPlanPageLocators/DataPlanPageLocators.py
Variables   ${EXECDIR}/AmaysimDashboard/DataPlanPage/DataPlanPageResource/DataPlanPageTestData/DataPlanPageTestData.py
Resource    ${EXECDIR}/AmaysimDashboard/DataPlanPage/DataPlanPageResource/DataPlanPageKeywords/DataPlanPageKeywords.robot









