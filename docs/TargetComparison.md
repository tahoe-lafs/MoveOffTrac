# Target Comparison

Moving off Trac leads to consider different software offering similar features/properties.

## Side-by-side summary

| 1. self-hosted | criteria          | Trac         | Forgejo      | Gitea     | Gitlab     | notes             |
|----------------|-------------------|--------------|--------------|-----------|------------|-------------------|
| feature/req    | (F)OSS license    | 3-clause BSD | GPLv3        | MIT       | MIT        |                   |
| feature/req    | issue tracking    | yes          | yes          | yes       |            |                   |
| feature/req    | wiki pages        | yes          | yes          | yes       |            |                   |
| feature/req    | self-registration | yes          | yes          | yes       |            | spam mitigation?  |
| feature/opt    | OAuth - Github    | ?            | NA           | yes       |            | account recovery? |
| feature/opt    | static web sites  | *wiki only*  | options      | yes       |            |                   |
| feature/opt    | git mirror        | yes          | yes          | yes       |            |                   |
| feature/opt    | git repository    | external     | yes          | yes       |            |                   |
| feature/opt    | binary repository | external     | yes          | yes       |            |                   |
| feature/opt    | CI support        | none         | maybe        | yes       | yes        |                   |
| feature/opt    | CI on linux       | -            | ?            | yes       | yes        | additional cost   |
| feature/opt    | CI on mac         | -            | ?            | yes       | yes        | additional cost   |
| feature/opt    | CI on win         | -            | ?            | yes       | yes        | additional cost   |
| feature/opt    | CI based on       | -            | ?            | act       | gitlab     |                   |
| freedom        | CI license        | -            | ?            | MIT       | MIT        |                   |
| capex          | setup             | 8            | 8            | 8         |            | hours             |
| capex          | migration         | 4            | 8            | 8         |            | hours             |
| opex           | ops               | 16           | 16           | 16        |            | hours/month       |
| opex           | hosting           | 10           | 10           | 10        |            | $/month           |
| opex           | subscription      | 0            | 0            | 0         | ?          | $/month           |
| **2. SaaS**    |                   | **Github**   | **Codeberg** | **Gitea** | **Gitlab** |                   |
| feature/req    | self-hostable     | yes          | yes          | yes       | yes        |                   |
| feature/req    | (F)OSS license    | **no**       | GPLv3        | MIT       | MIT        |                   |
| feature/req    | issue tracking    | yes          | yes          | yes       |            |                   |
| feature/req    | wiki pages        | yes          | yes          | yes       |            |                   |
| feature/req    | self-registration | yes          | yes          | yes       |            | spam mitigation?  |
| feature/opt    | OAuth - Github    | NA           | yes          | yes       |            | account mapping?  |
| feature/opt    | static web sites  | yes          | yes          | ?         | ?          |                   |
| feature/opt    | git mirror        | yes          | yes          | yes       | ?          |                   |
| feature/opt    | git repository    | external     | yes          | yes       | ?          |                   |
| feature/opt    | binary repository | external     | yes          | yes       | ?          |                   |
| feature/opt    | CI support        | yes          | yes          | yes       | yes        |                   |
| feature/opt    | CI on linux       | yes          | yes          | yes       | yes        | additional cost?  |
| feature/opt    | CI on mac         | yes          | yes          | yes       | yes        | additional cost?  |
| feature/opt    | CI on win         | yes          | yes          | yes       | yes        | additional cost?  |
| feature/opt    | CI based on       | github       | woodpecker   | act       | gitlab     |                   |
| freedom        | CI (F)OSS license | **no**       | Apache-2.0   | MIT       | MIT        |                   |
| capex          | setup             | 2            | 4            | 4         | 2          | hours             |
| capex          | migration         | ?            | 8            | 8         | ?          | hours             |
| opex           | ops               | 4            | 4            | 4         | 4          | hours/month       |
| opex           | hosting           | 5            | 5            | 5         | 5          | $/month redirect  |
| opex           | subscription      | freemium?    | 0 (donation) | 20/user   | freemium?  | $/month           |

## Software

### Trac

Currently used for:

* user management: manual registration via email and IRC to avoid spam
* issue tracking: referred from [Github](https://github.com/tahoe-lafs/tahoe-lafs/pulls)
* wiki pages: in parallel from [Github](https://github.com/tahoe-lafs/tahoe-lafs/tree/master/docs)
* static web site: using the wiki [Start](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/WikiStart) page
* git mirror: allows to [browse](https://tahoe-lafs.org/trac/tahoe-lafs/browser) the latest code from Github

Aside from other self-hosted features:

* binary repository for Tahoe-LAFS release
* other Trac projects (see [DevInfra](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/DevInfra)
* Buildbot instances...

### Github

The code of the main [Tahoe-LAFS](https://github.com/tahoe-lafs) project and its related pull requests already live in Github.
Despite having been considered in the past, Github is not (F)OSS and not easily self-hostable (vendor loncking).

### Gitlab

Some projects related to Tahoe-LAFS already lives on Gitlab.com.
And despite being (F)OSS, Gitlab is not easily self-hostable (vendor locking).
In addition, PrivateStorage.io has a poor experience using Gitlab: cumbersome UI and many security issues.

### Gitea

**TODO**: Sum up the pros and cons assessed in the issue/wiki.

### Forgejo

**TODO**: Describe the small differences with Gitea.


### Summary

#### Features and requirements

| Feature           | Requirement | Trac      | Github   | Gitea     | Forgejo      | Notes             |
|-------------------|-------------|-----------|----------|-----------|--------------|-------------------|
| issue traking     | MUST        | yes       | yes      | yes       | yes          |                   |
| wiki pages        | MUST        | yes       | yes      | yes       | yes          |                   |
| git mirror        | COULD       | yes       | yes      | yes       | yes          |                   |
| self-registration | MUST        | yes       | yes      | yes       | yes          | spam mitigation?  |
| OAuth - Github    | COULD       | ?         | NA       | yes       | yes          | account recovery? |
| (F)OSS            | MUST        | yes       | no       | yes       | yes          | community size?   |
| self-hostable     | MUST        | yes       | yes      | yes       | yes          |                   |
| SaaS provided     | MUST        | ?         | NA       | gitea.com | codeberg.org | funding source?   |
| static web sites  | COULD       | wiki only | gh-pages | options   | options      |                   |
| binary repository | COULD       | external  | yes      | yes       | yes          |                   |
| git repository    | COULD       | external  | yes      | yes       | yes          |                   |
| CI support        | COULD       | no        | yes      | yes       | yes          |                   |

#### Rating

| criteria        | sub-category | Trac      | Gitea     | Forgejo   | note/metric         |
|-----------------|--------------|-----------|-----------|-----------|---------------------|
| community       | contributors | 2 > 1     | 29 > 19   | 41 > 40   | last year <> month  |
| community       | last release | Sep 2023  | Sep 2024  | Sep 2024  | date (version)      |
| community       | last version | 1.6       | 1.22.2    | 8.0.3     | date (version)      |
| maintainability | language     | Python    | Go        | Go        | -                   |
| maintainability | docker       | obsolete  | 1.22.2    | 8.0.3     | last stable image   |
| maintainability | debian       | not found | not found | not found | last stable package |
| maintainability | nixos        | not found | 1.21.11   | 7.0.9     | last stable package |

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

Same as Gitea on self-hosted NixOS, only different CI and gh-pages solutions.

### Forgejo on Codeberg

Codeberg is a non-profit org supporting Free Software and therefore only allows repos licensed under an OSI/FSF-approved license.
Codeberg also [explicitly](https://docs.codeberg.org/getting-started/what-is-codeberg/#alternatives-to-codeberg) stands against vendor locking.

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
