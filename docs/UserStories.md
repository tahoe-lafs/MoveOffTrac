# User stories

The following sections describe the different roles that an actor can haveplay while using the (source and/or target) system covered by this (migration) project.

## Open Questions

- We've been talking about "get off Trac" for years; the main pain-points and concerns have been:
  - nobody has done admin: self-hosting is hard, and a lot of work
  - nobody has done moderation: spam accounts, spam tickets etc have been an ongoing problem (culminating in shutting off accout creation)
  - although we haven't kept it updated, Trac itself has been declining in popularity and maintenance
  - who pays for hosting, DNS, etc?
- Why do we care about "a wiki"? Can we state these things as actual requirements that don't use the word "wiki"?
- Trac currently serves "the Web site" for Tahoe-LAFS ("tahoe-lafs.org"):
   - what replaces the "landing page" piece of this?
   - if the above is a Web site:
      - how is it hosted?
      - who pays for that?
      - DNS?
      - how is it administered (e.g. how are changes proposed, agreed-upon and published)?

## As Tahoe-LAFS end-user = anoynymous user

I expect to be able to...

- view rendered documentation
- view a Web site related to the project ("tahoe-lafs.org")
- view issues/tickets
- view proposed fixes for issues (aka "Pull Requests" or "Merge Requests" or "Patch Sets")
- search any of the above
- browse/read the source code
- follow a process to become "authenticated user" (e.g. "sign up")

## As Tahoe-LAFS contributor = authenticated user

I expect to be able to...

- do everything an "anonymous user" may do
- propose new issues ("file a ticket")
- propose new fixes for issues ("open a Pull Request / Merge Request")
- participate in discussions of both the above ("add a comment")
- automatically run the tests of any proposed fix ("continuous integration / CI")
- close an issue (that I created)

nice-to-have:
- understand the source lifecycle (eg. what's next when the PR is review and merged and is my ticket/issue automaticly closed?)
- be notified of changes made on the tickets/issues I'm linked to
- re-open any closed ticket/issue


## As a Tahoe-LAFS maintainer = power user

I expect to be able to...

- everything in the above two categories
- be notified for new tickets/issues, and possibly confidential
- update tickets/issue (for triage):
  - title and description
  - owner/assignee(s)
  - type, priority, component, version, milestone, resolution
  - other keywords/labels
- CRUD metadata of tickets/issues
- lock/close any tickets/issues

#### Questions left:

- can a contributor create keywords/labels w/o priviledges?
- how to/who should handle **confidential** tickets/issues (0-day, responsible disclosure, etc.)?
- are code reviewers always maintainers/admins of the project?
- may issues/tickets without PR get closed with `wontfix` or `duplicate`?
- workflow criteria for source code management: authors of approved PRs can get promoted to add commits to feature branches?

## As a Tahoe-LAFS admin = super user

I expect to be able to...

- everything above
- add / remove maintainers
- add / remove admin
- add / remove projects


## As a migrator = system admin

I expect to be able to...
1. to run a solid sprint of real team work within (xx) weeks, 
2. so that I can still have time to make repair (because no roll-back and kind of forced - but good reason to step on self-hosted for better control).
