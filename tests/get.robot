*Settings*
Documentation           GET /partners

Resource    ${EXECDIR}/resources/base.robot

Suite Setup    Create Partner List

*Test Cases*
Should return a partner list

    ${response}    GET Partners
    Status Should Be    200

    ${size}    Get Length    ${response.json()}

    Should Be True    ${size} > 0

Should search partner by name

    ${response}    Search Partner    Gordão
    Status Should Be    200 

    ${size}    Get Length    ${response.json()}

    Should Be True    ${size} == 1

    Should Be Equal    ${response.json()}[0][name]    Restaurante do Gordão

## Gancho para os testes acima
*** Keywords ***
Create Partner List

        ${partners}    Factory Partner List

    FOR  ${p}    IN    @{partners}  
        POST Partner    ${p}
    END
    