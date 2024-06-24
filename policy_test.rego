package s3.access.policy_test

import data.s3.access
import rego.v1

# Test Case: Allowed Role
test_allow_st_access_role if {
	input.request.context.authorizer.claims.role == "st-access-role"
	access.allow with input as input
}

# Test Case: Disallowed Role
test_deny_other_role if {
	input.request.context.authorizer.claims.role == "other-role"
	not access.allow with input as input
}

# Test Case: Missing Role
test_deny_missing_role if {
	input.request.context.authorizer.claims == ""
	not access.allow with input as input
}

# Test Case: No Authorizer Claims
test_deny_no_authorizer_claims if {
	input.request.context.authorizer == ""
	not access.allow with input as input
}

# Test Case: Empty Input
test_deny_empty_input if {
	input == ""
	not access.allow with input as input
}

