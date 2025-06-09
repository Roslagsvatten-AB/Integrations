import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /aimlistener on httpDefaultListener {
    resource function get postprocessor() returns error|json|http:InternalServerError {
        do {
            json aimresponse = check aimClient->get("");
            return aimresponse;
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
