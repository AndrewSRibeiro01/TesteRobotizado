*** Settings ***    
Documentation    Database helpers connection

Library                 RobotMongoDBLibrary.Delete
Library                 RobotMongoDBLibrary.Find

*** Variables ***
&{MONGO_URI}        connection=mongodb+srv://bugereats:WZFobMAy48RF6taG@cluster0.o9hgo6f.mongodb.net/PartnerDB?retryWrites=true&w=majority    database=PartnerDB    collection=partner

*** Keywords ***
Remove Partner By Name
    [Arguments]    ${partner_name}

    ${filter}      Create Dictionary
    ...            name=${partner_name}

    DeleteOne  ${MONGO_URI}    ${filter} 

Find Partner By Name
    [Arguments]    ${partner_name}

    ${filter}      Create Dictionary
    ...            name=${partner_name}

    ${results}     Find    ${MONGO_URI}    ${filter}

    [return]       ${results}[0]