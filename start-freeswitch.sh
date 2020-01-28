#!/bin/bash
# Wait until PostgreSQL and haproxy started and listens on port 5432.
until $(nc -z db 5432); do { printf '.'; sleep 1; }; done
until $(nc -z 127.0.0.1 5432); do { printf '.'; sleep 1; }; done

# Start server.
/usr/bin/freeswitch -rp -nonat