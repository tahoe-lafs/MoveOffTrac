#!/usr/bin/env bash

# Configure bash behavior
set -o errexit  # exit on failed command
set -o nounset  # exit on undeclared variables
set -o pipefail # exit on any failed command in pipes

# Verbosity settings
: ${VERBOSE=1}
if [ ${VERBOSE} -ge 2 ]; then
  set -o xtrace
fi

# Parse the arguments
TRAC_DIR=${1?Path to trac directory is missing as first argument!}
DUMP_DIR=${2?Path to dump directory is missing as second argument!}

# Prepare for more args
shift
shift

trac-admin "${TRAC_DIR}" hotcopy "${DUMP_DIR}"

echo "Purging sessions ..."
trac-admin "${DUMP_DIR}" session purge "0 days ago"
echo "Purge sessions done"

echo "Vacuuming the DB ..."
sqlite3 "${DUMP_DIR}/db/trac.db" 'VACUUM;'
echo "Vaccum done"

echo "Purging logs ..."
rm -f ${DUMP_DIR}/log/*
echo "Purge logs done"

echo "Dumping additional files ..."
for SRC in "${@}"; do
  echo "  ${SRC} ..."
  cp -a "${SRC}" "${DUMP_DIR}"
done
echo "Dump additional files done"
