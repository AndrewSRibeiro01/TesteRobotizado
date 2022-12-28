*** Settings ***
Documentation    RabbitMQ Helpers API

*** Variables ***
${RABBIT_URL}      https://shark.rmq.cloudamqp.com/api/queues/xewkwwmf/email/contents                 
${RABBIT_HEADERS}  Content-Type=application/json    Authorization=Basic eGV3a3d3bWY6Wkd4VWZWV3phX2V2OHdkRlhlNlEwdmFETjBMQjkyM1A=

*** Keywords ***
Purge messages

    ${payload}     Create Dictionary
    ...            vhost=xewkwwmf
    ...            name=email
    ...            mode=purge

    ${response}    DELETE    ${RABBIT_URL}/contents    json=${payload}    headers=${RABBIT_HEADERS}

    [return]       ${response}

Get message

    ${payload}     Create Dictionary
    ...            vhost=xewkwwmf
    ...            name=email
    ...            truncate=50000    
    ...            ackmode=ack_requeue_true
    ...            encoding=auto
    ...            count=1

    ${response}    POST    ${RABBIT_URL}/get    json=${payload}    headers=${RABBIT_HEADERS}
    
    [return]       ${response}