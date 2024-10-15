# User stories

The following sections describe the different roles that an actor can haveplay while using the (source and/or target) system covered by this (migration) project.

## As Tahoe-LAFS end-user = anoynymous user

I expect...

- Fully read only
- NOT create issues
- register an account

## As Tahoe-LAFS contributor as non-collaborator = authenticated user

I expect...

- All previous activities
- link existing local account to Github account (Oauth)
- Create new issues, possibly confidential (e.g.: 0-day?)
- Search for similar WIP issues
- associate (link) my work to existing issues
- mention (link) related issues
- (test before submitting PR => Github and CI?)
- submit code for review (eg. draft vs submit for review - label for this like waiting for review?)
- Understand the source lifecycle. What's next when the PR is review and merged?

## As a Tahoe-LAFS collaborator/reviewer?

Q: Are reviewer always collaborator of the project?

I expect...

- All previous activities
- See/notify for new issue, and possibly confidential
- CRUD issue ownership/assignment
- Close/Lock Issues
- CRUD **confidential** Issues (zero day security, responsible disclosure, etc.)

Maybe owner only:

- Add/move collaborators (eg. issues without PR may get closed with `wontfix` or `duplicate`)

### (Source code management...)
- Workflow criteria?: authors of approved PRs can get promoted to add commits to feature bra

## As a migrator

I expect...
-  to run a solid sprint of real team work within (xx) weeks, 
- so that I can still have time to make repair (because no roll-back and kind of forced - but good reason to step on self-hosted for better control).
