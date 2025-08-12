import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /aimlistener on httpDefaultListener {
    resource function get postprocessor() returns error|json|http:InternalServerError {
        do {
            json aimresponse2 = check aimresponse->get("");
            return aimresponse2;

        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    resource function get Consolidate() returns error|json {
        do {
            json Consolidate2 = check Consolidate->get("");
            return Consolidate2;

        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
