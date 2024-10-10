##############################
# General level requirements #
##############################

# Pull base image from official repo
FROM hashicorp/terraform:1.7.5@sha256:386b7bff108f9fd3b79a2e0110190c162b5e4aebf26afe3eef028fd89532c17e

##################################
# Application level requirements #
##################################

###########################
# User level requirements #
###########################

# Parameters for default user:group
ARG uid=1000
ARG user=appuser
ARG gid=1000
ARG group=appgroup

# Add user and group for build and runtime
RUN id "${user}" > /dev/null 2>&1 || \
    { addgroup -g "${gid}" "${group}" && adduser -D -h "/home/${user}" -s /bin/bash -G "${group}" -u "${uid}" "${user}"; }

# Switch to user
USER ${user}
