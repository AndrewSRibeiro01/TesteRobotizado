*Settings*
Documentation           GET /partners

Resource    ${EXECDIR}/resources/base.robot

*Test Cases*
Should return a partner list

    ${response}    GET Partners
    Status Should Be    200

    ${size}    Get Length    ${response.json()}

    Should Be True    ${size} > 0