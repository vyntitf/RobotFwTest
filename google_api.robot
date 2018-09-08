*** Settings ***
Library    RequestsLibrary    
Resource    google_api_kw.robot
Suite Setup    Create Session    googleapi    http://maps.googleapis.com/
Suite Teardown    Delete All Sessions    

*** Test Cases ***
Demonstrate API testing and XML response
    Postcode should match city in XML response    00500    Helsinki
    Postcode should match city in XML response    33100    Tampere