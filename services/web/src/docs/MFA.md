# Multi Factor Authentication

## Verify

This allows the a user with mfa enabled to authenticate and get a JWT token that can be used for authentication on all subsequent API calls. This api should be called after login.

callSummary({method: 'POST', path: '/1/mfa/verify'})

## Send Code

This sends an sms containg a one time code required to complete `/1/mfa/verify`, assuming the users has mfa (method=sms) enabled.

callSummary({method: 'POST', path: '/1/mfa/send-code'})

## Disable

This disable mfa for the given user.

callSummary({method: 'DELETE', path: '/1/mfa/disable'})

## Setup

This generates a new mfa secret to be shared with the user. And sends an sms if phone is specified.
The response data `uri` can be used to generate a QR code that can be used by an authenticator app.

The response of this endpoint should be stored an submitted to `/1/mfa/enable`.

callSummary({method: 'POST', path: '/1/mfa/setup'})

## Generate Backup Codes

Provides (but does not save) the mfa backup codes, this output is required for `/1/mfa/enable`.

callSummary({method: 'POST', path: '/1/mfa/generate-backup-codes'})

## Enable

This enables mfa for the given user.

It requires output of `/1/mfa/setup` and `/1/mfa/generate-backup-codes`

callSummary({method: 'POST', path: '/1/mfa/enable'})

## Check Code

This checks confirm that code is valid given the secret.

callSummary({method: 'POST', path: '/1/mfa/check-code'})
