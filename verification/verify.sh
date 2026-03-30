#!/bin/bash

# Millings Evidence Integrity Verification Script
# Verifies artifact identity and continuity via SHA-256

set -e

echo "----------------------------------------"
echo "MCCL Verification Script"
echo "Millings Evidence Integrity Branch™"
echo "----------------------------------------"

if [ "$#" -lt 2 ]; then
  echo "Usage: ./verify.sh <file> <expected_hash>"
  exit 1
fi

FILE=$1
EXPECTED_HASH=$2

if [ ! -f "$FILE" ]; then
  echo "Error: File does not exist."
  exit 1
fi

echo "Target file: $FILE"

# Compute SHA-256 hash
ACTUAL_HASH=$(sha256sum "$FILE" | awk '{print $1}')

echo "Expected hash: $EXPECTED_HASH"
echo "Actual hash:   $ACTUAL_HASH"

if [ "$ACTUAL_HASH" == "$EXPECTED_HASH" ]; then
  echo "----------------------------------------"
  echo "STATUS: VERIFIED"
  echo "Integrity confirmed — artifact unchanged"
  echo "----------------------------------------"
  exit 0
else
  echo "----------------------------------------"
  echo "STATUS: FAILED"
  echo "Integrity violation — artifact mismatch"
  echo "----------------------------------------"
  exit 2
fi
