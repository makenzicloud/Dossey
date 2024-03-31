# Title
## Issue Description
A generic overview of the issue, I usually use the default text from OWASP as it explains the issue well. Include a more specific description of the issue identified within the application.
## 
The error occurred because the solidity version specified in the IERC20 interface file is different from the compiler version being used. The IERC20 interface specifies "pragma solidity ^0.8.20;", but the current compiler version being used is 0.8.10.

To fix this error, you can either:
1. Update the compiler version in your code to match the version specified in the interface file. In this case, you would change "pragma solidity ^0.8.10;" to "pragma solidity ^0.8.20;".
2. Downgrade the compiler version to 0.8.10 if you need to use that specific version.

Make sure the compiler version specified in the pragma statement in your code matches the version specified in the interface file to avoid compiler version mismatch errors.
## Affected URL/Area
- The affected urls or area of the application where the issue exists.

## Risk Rating
- Risk: Something
- Difficulty to Exploit: Somethingelse
- CVSS3 Score [blah](https://nvd.nist.gov/cvss.cfm?calculator&version=3&vector=(AV:N/AC:M/Au:S/C:C/I:C/A:N))
- Authentication?

### Impact
- What kind of attacker?
- Do they need authentication?
- Who else does it affect?

## Steps to reproduce/PoC
A clear outline of the steps required to execute the payload as an attacker, this can include how to setup the payload and launch it.
- Request
- Response
- Show, Introduce, Discuss
- Screenshots

## Affected Demographic/User Base 
- Explain who this issue affects? 
- Is it everyone or just a select amount of users? 
- How can this occur?

## Recommended Fix
- How do you fix the issue? 
- What is the recommended remediation actions required to successfully fix issue x?

## References
Include additional reading for the client to further backup the issues explained or elaborate more on other potential issues chained to the one identified.
- [1] [Reference 1]()
- [2] [Reference 2]()