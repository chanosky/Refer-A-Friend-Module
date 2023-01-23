# Automation Test Script for Refer a friend page

This automation script uses the Robot Framework and Selenium to automate the testing of a "Refer a Friend" page. The script will test the functionality of the page by using a variety of test cases including:

1.  Verify Refer a Friend contents before sharing
2.  Verify that user should be able to share by using a valid email and message
3.  Verify that user should not be able to share by using an invalid email
4.  Verify that user should not be able to share by using a blank message
5.  Verify that user should be able to download Terms page
6.  Verify that user should be able to share using to Messenger
7.  Verify that user should be able to share using to Facebook
8.  Verify that user should be able to share using to Twitter
9.  Verify that user should be able to copy referral link
10.  Verify Refer a Friend contents after sharing
11.  Verify that user should be able to go back to share page after clicking share again button

This script is intended to help ensure that the "Refer a Friend" page is functioning properly and to catch any potential bugs or errors before they impact real users.

# Prerequisites

Here are the prerequisites in order to run the script:

1.  Python v3.10 or latest
2.  Robot Framework v6.02 or latest
3.  Selenium v.4.72 or latest
4.  Make sure that the Chrome browser is installed in the PC.

## How to run

Please see below the step-by-step procedure for fetching the robot framework script from GitHub, installing the necessary requirements, and running the script using the command line:

1.  Install Python on your system. You can download the latest version from the official website: [https://www.python.org/downloads/](https://www.python.org/downloads/)
2.  Open a command prompt or terminal window and navigate to the directory where you want to store the script.
3.  Use the command `git clone` followed by the repository url to fetch the script from GitHub, for example: `git clone https://github.com/chanosky/Refer-A-Friend-Module`
4.  Navigate into the cloned repository by using the command `cd yourrepository`
5.  Install the necessary requirements by running the command `pip install -r requirements.txt`
6.  To run the script, use the command `robot --outputdir .\AmaysimDashboard\Results .\AmaysimDashboard\DataPlanPage\DataPlanPageTest\DataPlanPageTest.robot`

## Limitations

This script has the following limitations:

1.  The script has only been tested on a Windows operating system. There may be compatibility issues when running the script on other operating systems such as MacOS, Linux, etc.
    
2.  The script has only been tested using the Chrome browser. The script may not work properly or at all when using other browsers such as Firefox, Safari, Edge, etc.
    
3.  The script may not be compatible with different versions of the Chrome browser and may only work with specific versions.
    
It is important to keep these limitations in mind when using this script and to thoroughly test the script on different operating systems and browsers before using it in a production environment.

