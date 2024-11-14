# User stories

The following sections describe the different roles that an actor can haveplay while using the (source and/or target) system covered by this (migration) project.

## Open Questions

- We've been talking about "get off Trac" for years; the main pain-points and concerns have been:
  - nobody has done admin: self-hosting is hard, and a lot of work
  - nobody has done moderation: spam accounts, spam tickets etc have been an ongoing problem (culminating in shutting off accout creation)
  - although we haven't kept it updated, Trac itself has been declining in popularity and maintenance
  - who pays for hosting, DNS, etc?
- Why do we care about "a wiki"? I have tried to re-state these as generic requirements, without the word "wiki"
  - they could be in "git" or otherwise managed
  - some of "the wiki" is landing-page/web site, some of "the wiki" is documentation etc
- Trac currently serves "the Web site" for Tahoe-LAFS ("tahoe-lafs.org"):
   - what replaces the "landing page" piece of this?
   - if the above is a Web site:
      - how is it hosted?
      - who pays for that?
      - DNS?
      - how is it administered (e.g. how are changes proposed, agreed-upon and published)?
- where it says "the software" below, that likely expands to "any software project under the tahoe-lafs org umbrella".
- it is highly likely that we'd want these as separate "projects" or similar

- Probably out of scope:
  - we do not currently have "non-public" issues
  - DNS (it is simple, and it is click-ops for two people currently)


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
- identify an issue with "the Web site"
- identify an issue with "the documentation"
- identify an issue with "the software"
- propose new fixes for any of the above ("open a Pull Request / Merge Request")
- participate in discussions of any of the above (proposed fixues or issues, including "review")
- automatically run the tests of any proposed fix ("continuous integration / CI")
- close an issue (that I created)

nice-to-have:
- understand the source lifecycle (eg. what's next when the PR is review and merged and is my ticket/issue automaticly closed?)
- be notified of changes made on the tickets/issues I'm linked to
- re-open any closed ticket/issue


## As a Tahoe-LAFS maintainer = power user

I expect to be able to...

- everything in the above two categories
- be notified for new tickets/issues
- update tickets/issue (for triage):
  - title and description
  - owner/assignee(s)
  - CRUD other metadata
- CRUD available metadata of tickets/issues
- close any issues

nice to have:

- lock any issues from further changes / discussion


#### Questions left:

- can a contributor create keywords/labels w/o priviledges?
- how to/who should handle **confidential** tickets/issues (0-day, responsible disclosure, etc.)? [meejah: out of scope]
- are code reviewers always maintainers/admins of the project? [meejah: currently at least write permission]
- may issues/tickets without PR get closed with `wontfix` or `duplicate`?
- workflow criteria for source code management: authors of approved PRs can get promoted to add commits to feature branches?

## As a Tahoe-LAFS admin = super user

I expect to be able to...

- everything above
- add / remove maintainers
- add / remove admin
- add / remove projects


## As a migrator = system admin

meejah: What is this role? Is it time-limited?

I expect to be able to...
1. to run a solid sprint of real team work within (xx) weeks, 
2. so that I can still have time to make repair (because no roll-back and kind of forced - but good reason to step on self-hosted for better control).
