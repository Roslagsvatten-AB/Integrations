import ballerina/http;

final http:Client aimClient = check new ("https://aimtest.roslagsvatten.se/Data/api/consolidateQueueData/?consumer=ultimo&type=tag&chunksize=100&source=Consolidate", auth = {
    username: "rd\\svc_aveva-postp-Ulti",
    password: "nb24U6+5@+:.rPI,xYS;CyQY$ZF,/ysx"
});
