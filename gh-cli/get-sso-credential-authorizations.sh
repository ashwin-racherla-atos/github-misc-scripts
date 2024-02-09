#!/bin/bash

# more info: 
# - https://github.blog/changelog/2019-04-09-credential-authorizations-api/
# - https://github.blog/changelog/2021-11-09-expiration-dates-of-saml-authorized-pats-available-via-api/

# gets both "personal access token" and "SSH key" credential types and their expiration (if applicable)

gh api --paginate /orgs/githubcustomers/credential-authorizations --jq='.[] | "login: \(.login)    expiration: \(.authorized_credential_expires_at)    ID: \(.credential_id)    note: \(.authorized_credential_note) type: \(.credential_type)"'
