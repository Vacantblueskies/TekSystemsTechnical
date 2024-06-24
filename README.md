# TekSystemsTechnical
Technical Assessment for implementing security policies written in rego


# OPA Policy for S3 Bucket Access

## Edge Cases
1. Users with no role specified in the request.
2. Requests with roles similar to 'st-access-role' but not exactly matching.

## Logging and Monitoring
1. Use OPA's built-in logging features to log policy decisions.
2. Integrate OPA logs with centralized logging solutions like AWS CloudWatch.
3. Set up alerts for policy violations or unusual access patterns.

## Assumptions
1. The input request format follows the typical AWS IAM access request structure.
2. Only one role is checked per request.
