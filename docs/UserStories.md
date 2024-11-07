# User stories

The following sections describe the different roles that an actor can haveplay while using the (source and/or target) system covered by this (migration) project.

## As Tahoe-LAFS end-user = anoynymous user

I expect to be able to...

1. view published wiki pages, including the landing page (https://tahoe-lafs.org/)
2. search for wiki pages based on terms present in their titles and/or content
3. view non-confidential tickets/issues, often referred from elsewhere (e.g.: PRs on GitHub)
4. search for tickets/issues based on the following input (as proposed from [ViewTickets](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/ViewTickets)):
  - terms present in their titles, descriptions and/or comments
  - username of the reporters and/or owners/assignees
  - creation and/or last changed date and time
  - components: `code-frontend`, `code-storage`, `dev-infrastucture`,...
  - milestones: `undecided`, `soon`, `eventually`, ...
  - priorities: `minor`, `normal`, `major`, `critical` or `supercritical`
  - resolutions: `fixed`, `invalid`, `wontfix`, `duplicate`, ...
  - types: `defect`, `enhancement`, `task`
  - versions: `1.15.1`, ...
  - special keywords: `review-needed`, `reviewed`, `news-needed`, `test-needed`, `leastauthority`, ...
  - platforms: `arm`, `mac`, `windows`, `unix`, ...
  - functionalities: `accounting`, `download`, `http`, `tahoe-cp`, `tahoe-run`, ...
  - frontends and applications: `fuse`, `magic-folder`, `smb`, `wui`, ...
  - dependencies: `foolscap`, `openssl`, `sqlite`, `twisted`, ...
  - dev-infrastructure services: `ci`, `git`, `trac`, ...
  - other keywords: `privacy`, `memory`, `security`, `test`, `cleanup`, ...
5. view the roadmap
6. view the source code
7. register an account to become a contributor (e.g.: to create issues)

## As Tahoe-LAFS contributor = authenticated user

I expect to be able to...

1. act as an end-user (described above), in addition to the following activities
2. link my existing local account to Github account (OAuth)
3. propose new wiki pages and/or changes in the existing ones
4. create new issues, possibly confidential (e.g.: 0-day?)
5. comment on any tickets/issues
6. associate (link) my work to existing tickets/issues
7. mention (link) related tickets/issues
8. (out-of-scope: test before submitting PR => Github and CI?)
9. submit code/wiki changes for review (eg. draft vs submit for review - label for this like waiting for review?)
10 understand the source lifecycle (eg. what's next when the PR is review and merged and is my ticket/issue automaticly closed?)
11. be notified of changes made on the tickets/issues I'm linked to
12. close any ticket/issue (if not automatically closed when the related PR is merged)
13. re-open any closed ticket/issue

## As a Tahoe-LAFS maintainer = power user

I expect to be able to...

1. act as a contributor (described above), in addition to the following activities
2. be notified for new/changed wiki pages proposed by contibutors
3. approve/publish new/changes wiki pages
4. unpublish/delete wiki pages
5. be notified for new tickets/issues, and possibly confidential
6. update tickets/issue (for triage):
  - title and description
  - owner/assignee(s)
  - type, priority, component, version, milestone, resolution
  - other keywords/labels
7. CRUD types, priorities, components, versions, milestones and resolutions available for tickets/issues
8. CRUD other keywords/labels available for ticket/issues
9. lock/close tickets/issues

#### Questions left:

- can a contributor create keywords/labels w/o priviledges?
- how to/who should handle **confidential** tickets/issues (0-day, responsible disclosure, etc.)?
- are code reviewers always maintainers/admins of the project?
- may issues/tickets without PR get closed with `wontfix` or `duplicate`?
- workflow criteria for source code management: authors of approved PRs can get promoted to add commits to feature branches?

## As a Tahoe-LAFS admin = super user

I expect to be able to...

1. act as a maintainer (described above), in addition to the following activities
2. add/remove maintainers

## As a Tahoe-LAFS owner = root user

I expect to be able to...

1. act as a maintainer (described above), in addition to the following activities
2. add/remove admin
3. add/remove projects

## As a migrator = system admin

I expect to be able to...
1. to run a solid sprint of real team work within (xx) weeks, 
2. so that I can still have time to make repair (because no roll-back and kind of forced - but good reason to step on self-hosted for better control).
