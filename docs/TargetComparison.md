# Target Comparison

Moving off Trac leads to consider different software offering similar features/properties.

## Software

### Trac

**TODO**: Just to list the feature currently used for comparison.

### Github

**TODO**: Summary of the features covered by the previous estimate.

### Gitlab

**TODO**: Sum up the pros and cons assessed in the issue/wiki.

### Gitea

**TODO**: Sum up the pros and cons assessed in the issue/wiki.

### Forgejo

**TODO**: Describe the small differences with Gitea.

## Hosting

### Gitea/Forgejo on self-hosted NixOS

#### Pros

* Links to issues and wiki pages should work (WiP)
* Attachments are migrated and available
* Links to (old) comments work
* Links to (old) attachments work
* Links to (old) authors work (if pre-provisioned w/ mapping to GH)
* Should perform better than SaaS for a start (DoS protection?)
* Nearly ready to MoveOffTrac (within one month)
* Many options to fix content later (e.g.: full access to DB)
* Website already works with CI/CD
* CI/CD works like Github and CAN cover all platform

#### Cons

* End-user management still needs baby-sitting, but less than for Trac (see next section)
* VPS required with (more) access management and bills to pay (8$/m)
* Decent ops/baby-sitting required: updates, monitoring and backup/restore (how many h/m?)
* Would scale poorly, but unlikely needed

#### Pending questions

* Previously, it has been decided to avoid self-registration=spam! How to mitigate this self-hosted?
  * With registration approval?
  * With Github SSO?
  * With CAPTCHA?
  * With fail2ban?
  * More info: https://github.com/go-gitea/gitea/issues/6350
* Could a third-party manage the self-hosted instance, even for a short term (e.g.: 1 year)?

### Forgejo on self-hosted NixOS

### Forgejo on Codeberg

#### Pros

* Smaller VPS (5$/m), but still required for redirection (stateless, maybe possible w/o?)
* Minimal baby-sitting: updates and monitoring (how many h/m?)
* Free of extra charge on Codeberg (20$/user/m on Gitea!)
* Should scale better, but performance could be a problem (at least on Codeberg!)
* Registration (spam) is handled by Codeberg

#### Cons

* Links to (old) comments are broken: likely a bug, but on which side?
* Links to (old) attachments are broken: are attachments migrated at all?
* Links to (old) authors are broken: likely on purpose, to be verified with Codeberg?
* Delays MoveOffTrac (unless we agree on 2 steps)
* Reduced options to fix the content later (e.g.: no access to the DB)
* Jekyll website needs to be adapted to work on Codeberg (pages)
* CI/CD works differently from Github/Gitea (but possible)

#### Pending questions

* Broken links (to comments, attachments and authors)?

### Pending questions

* Should we test a free plan on Gitea.com (with CI/CD)?
* What cost CI/CD on Codeberg vs Gitea.com? (for Win and Mac?)
