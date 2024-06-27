#!/usr/bin/env bash

# Configure bash behavior
set -o errexit  # exit on failed command
set -o nounset  # exit on undeclared variables
set -o pipefail # exit on any failed command in pipes

# Verbosity settings
: ${VERBOSE=1}
SH=("/usr/bin/env" "bash")
if [ ${VERBOSE} -ge 2 ]; then
  SH=("${SH[@]}" "-x")
  set -o xtrace
fi

# Set magic variables for current file & dir
__DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__FILE="${__DIR}/$(basename "${BASH_SOURCE[0]}")"
__BASE="$(basename ${__FILE} .sh)"
__ROOT="$(cd "$(dirname "${__DIR}")" && pwd)"
__CWD="$(pwd)"

# Parse the arguments
TRAC_DIR=${1?Path to trac directory is missing as first argument!}
DUMP_DIR=${2?Path to dump directory is missing as second argument!}
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
rm -f "${DUMP_DIR}/log/*"
echo "Purge log done"

echo "Dumping additional files ..."
for SRC in "${@}"; do
  echo "  ${SRC} ..."
  cp -a "${SRC}" "${DUMP_DIR}"
done
echo "Dump additional files done"
