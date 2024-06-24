# TekSystemsTechnical
Technical Assessment for implementing security policies using OPA written in rego.


# OPA Policy for S3 Bucket Access

## Edge Cases
1. Users with no role specified in the request.
2. Requests with roles similar to 'st-access-role' but not exactly matching(Ex. Case Sensitive, Encoded, etc.).
3. Users with invalid IP Addresses.

## Logging and Monitoring
1. We can use OPA's built-in logging features to log policy decisions. We would need to enable logging then send those logs to an S3 bucket. Then we can give access rights to an AWS Lambda function and use that to parse the logs available in the S3 bucket. Once this is working we can create a Log Group and Stream in CloudWatch where those logs can be sent.
2. We could also expand the Lambda function used above to send specific events to SecurityHub. These could include access requests at odd hours, denied, and unusual requests(possible brute-forcing or other automated attacks.) and could be created by parsing the logs provided by OPA for specific values.


