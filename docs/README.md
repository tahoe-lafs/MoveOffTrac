# Move Off Trac - project documentation

This documentation should complement the initial Trac ticket and the related Wiki page(s):

* [#4095](https://tahoe-lafs.org/trac/tahoe-lafs/ticket/4095)
* [MoveOffTrac](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/MoveOffTrac)

**NOTE**: the links above are quite slow to load and painful to contribute to (hence the motivation to migrate).

## Table of Content

1. [Initiation](#1-initiation)
2. [Planning](#2-planning)
3. [Execution](#3-execution)
4. [Monitoring and Control](#4-monitoring-and-control)
5. [Closure](#5-closure)

## 1. Initiation

### Scope

The scope, which includes the goals, requirements, inclusions/exclusions and a description of the expected delivrables has been initially described in the wiki [MoveOffTrac](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/MoveOffTrac#Scope) page.

### Assessment

The current underlying infrastructure has been assessed and described in a separated [DevInfra](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/DevInfra) wiki page.

## 2. Planning

As described in the [scope](#scope), we've identified and defined 3 deliverables so far for this project.

**NOTE**: Forgejo being a fork of Gitea, both are still pretty similar today (see the [comparison](./TargetComparison.md)). Which is why they will often appear together in the sections below.

### Delivrables

The following delivrables have been initialy described in the wiki [MoveOffTrac](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/MoveOffTrac#Deliverables) page:

1. **PoC on self-hosted Gitea**: to verify if and how the tickets and wiki pages exported from Trac would look like on Gitea (or Forgejo).

2. **Migration from Trac to self-hosted Gitea**: a mandatory step required to use the tool we've choosen for the migration ([trac2gitea](https://github.com/tahoe-lafs/trac2gitea)), as this one needs direct access to the DB in order the properly migrate the data.

3. **PoC and plan to migrate to Codeberg**: to compare and assess the trade-offs of an SaaS, which is the preferred end target for this project in order to reduce baby-sitting tasks which have been a problem since using a self-hosted Trac.

## 3. Execution

### PoC on self-hosted Gitea

WiP

### Migration from Trac to self-hosted Gitea

WiP

### PoC and plan to migrate to Codeberg

WiP

## 4. Monitoring and Control

### Reporting

The reporting for this project is done via the following channels:

* Mailing list updates:
  * [Jan 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-February/010067.html)
  * [Feb/Mar 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-April/010069.html)
  * [April 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-May/010073.html)
  * [May 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-June/010075.html)
  * [June 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-July/010080.html)
  * [July 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-August/010091.html)
  * [August 2024](https://lists.tahoe-lafs.org/pipermail/tahoe-dev/2024-September/010096.html)
* Nut&Bolts meetings and minutes:
  * [April 2, 2024](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/WeeklyMeeting#April22024)
  * [April 9, 2024](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/WeeklyMeeting#April92024)
  * [April 30, 2024](https://tahoe-lafs.org/trac/tahoe-lafs/wiki/WeeklyMeeting#April302024)
  * [Rolling notes](https://hackmd.io/DzedQERvRLWaaaeo-gtDhA)

## 5. Closure

TBD
