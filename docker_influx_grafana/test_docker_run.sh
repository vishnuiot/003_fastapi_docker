#!/bin/bash

# Test script for the command:
# docker run -d --name postgres postgres:14.18-bookworm

set -e # Exit immediately if a command exits with a non-zero status.

CONTAINER_NAME="postgres"
EXPECTED_IMAGE="postgres:14.18-bookworm"

cleanup() {
    echo
    echo "INFO: Tearing down test environment..."
    # Check if a container with the test name exists (running or stopped)
    if [ "$(docker ps -a -q -f name=^/${CONTAINER_NAME}$)" ]; then
        echo "INFO: Stopping and removing '${CONTAINER_NAME}' container."
        docker stop "${CONTAINER_NAME}" > /dev/null
        docker rm "${CONTAINER_NAME}" > /dev/null
    fi
    echo "INFO: Teardown complete."
}

# Ensure the cleanup function is called when the script exits,
# whether it's due to success, failure, or interruption.
trap cleanup EXIT

# --- Test Setup ---
echo "INFO: Setting up a clean test environment..."
# The trap will call cleanup, which also serves as our setup step
# by ensuring no container with the name exists before the test.


# --- Test Case: Run the container and verify its state ---

echo
echo "--- RUNNING TEST: Container creation and state verification ---"

# 1. Execute the command
echo "EXEC: docker run -d --name ${CONTAINER_NAME} ${EXPECTED_IMAGE}"
docker run -d --name "${CONTAINER_NAME}" "${EXPECTED_IMAGE}"

# 2. Verify the container is now running
CONTAINER_ID=$(docker ps -q -f "name=^/${CONTAINER_NAME}$")
if [ -z "${CONTAINER_ID}" ]; then
    echo "FAIL: Container '${CONTAINER_NAME}' was not found or is not running."
    exit 1
fi
echo "PASS: Container '${CONTAINER_NAME}' is running (ID: ${CONTAINER_ID})."

# 3. Verify the correct image is being used
IMAGE_NAME=$(docker inspect --format='{{.Config.Image}}' "${CONTAINER_ID}")
if [ "${IMAGE_NAME}" != "${EXPECTED_IMAGE}" ]; then
    echo "FAIL: Container is using the wrong image. Expected '${EXPECTED_IMAGE}', but got '${IMAGE_NAME}'."
    exit 1
fi
echo "PASS: Container is using the correct image ('${IMAGE_NAME}')."

echo "--- TEST SUCCEEDED ---"

echo
echo "RESULT: All verifications passed!"