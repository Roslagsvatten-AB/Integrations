import ballerina/http;

final http:Client aimresponse = check new ("https://aimtest.roslagsvatten.se/Data/api/getQueueData/?consumer=ultimo&type=tag&chunksize=100&source=Fetch", auth = {
    username: "rd\\svc_aveva-postp-Ulti",
    password: "nb24U6+5@+:.rPI,xYS;CyQY$ZF,/ysx"
});

final http:Client Consolidate = check new ("https://aimtest.roslagsvatten.se/Data/api/consolidateQueueData/?consumer=ultimo&type=tag&source=Consolidate", http2Settings = {

}, auth = {
    username: "rd\\svc_aveva-postp-Ulti",
    password: "nb24U6+5@+:.rPI,xYS;CyQY$ZF,/ysx"
});
