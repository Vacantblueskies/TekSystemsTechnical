package s3.access

import rego.v1

default allow := false

# Allow access if the user has the 'st-access-role' IAM role
allow if {
	input.request.context.authorizer.claims.role == "st-access-role"
}
