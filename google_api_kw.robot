*** Settings ***  
Library    RequestsLibrary    
Library    XML    
Library    String            

*** Keywords ***
Postcode should match city in XML response
    [Arguments]    ${postal_code}    ${expected_city}
    
    ${response}=    Get Request    googleapi    maps/api/geocode/xml?address=${postal_code},Finland
    Should Be Equal As Integers    ${response.status_code}    200
    ${xml_response}=    Parse Xml    ${response.text}
    
    ${status_element}=    Get Element Text    ${response.text}    status
    Should Be Equal As Strings    ${status_element}    OK
    
    ${returned_address}=     Get Element Text    ${xml_response}     result/formatted_address
    ${returned_city}=    Fetch City From Formatted Address    ${returned_address}

    Should Be Equal As Strings    ${returned_city}    ${expected_city}                

Fetch City From Formatted Address
    [Arguments]    ${raw_address}
    ${addr}=    Fetch From Left    ${raw_address}    ,
    ${addr}=    Fetch From Right    ${addr}    ${SPACE}
    [Return]    ${addr}