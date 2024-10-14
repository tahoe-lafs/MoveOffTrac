# Move Off Trac

## What?

* issue tracker
* wiki pages
* landing page
* code mirror

## Why?

* old looking
* shrinking community
* hard to use:
  * manual registration (to avoid spam)
* hard to maintain
  * no interest in updating the software
* very slow today


## Where?

Most options are offering more than issue tracking

* code collaboration and version control
* continuous integration
* static web site

At first:
* GitHub.com:
  * already used
  * hardly self-hostable, but not free (speech)
  * vendor locking
* GitLab.com:
  * already used
  * self-hostable, but complex
  * vendor locking
* Radicle.xyz:
  * early stage
  * only basic support for issue tracking
* SourceHut.org:
  * could cover all requirements
  * "odd" issue tracking via email
* Gogs/Gitea/Forgejo:
  * all forked from each other
  * similar to GitHub/GitLab
  * could cover all requirements

In depth:
  * Gogs is light, but has a very small community and no visible hosting provider
  * Gitea has a strong community and a well-known hosting provider (gitea.com)
  * ForgeJo has a similar community with some hosting providers but is more free (speech)

## How?

* Self-hosted VPS:
  * required step to migrate from Trac to Gitea/Forgejo (or anything else)
  * required to catch and redirect legacy URLs (e.g.: from PR's on GitHub) - unless we can do it with some webpages
  * required to proxy legacy site(s) and monitor access logs before termination
