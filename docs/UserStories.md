# User stories for roles

As a migrator...
- I need to run a solid sprint of real team work within (xx) weeks, 
- so that I can still have time to make repair (because no roll-back and kind of forced - but good reason to step on self-hosted for better control).

As anoynymous (Tahoe-LAFS) end-user...
- Fully read only
- NOT create issues
- register an account

As a (authenticated) non-collaborator users I expect to
- All previous activities
- link existing local account to Github account (Oauth)
- Create new issues, possibly confidential (e.g.: 0-day?)
- Search for similar WIP issues
- associate (link) my work to existing issues
- mention (link) related issues
- (test before submitting PR => Github and CI?)
- submit code for review (eg. draft vs submit for review - label for this like waiting for review?)
- Understand the source lifecycle. What's next when the PR is review and merged?

As a project/org collaborator/owner (includes code reviewer?) I expect to
- All previous activities
- see/notify for new issues, and possibly confidential
- CRUD issue ownership
- Add/move collaborators (eg. issues without PR may get closed with `wontfix` or `duplicate`)
- Close/Lock Issues
- CRUD **confidential** Issues (zero day security, responsible disclosure, etc.)
- Pro tip: authors of approved PRs can add content and comment
