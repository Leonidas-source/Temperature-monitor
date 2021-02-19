#!/bin/bash
check() {
  ls /usr/bin | grep -w "sensors" || error
}
error() {
  clear
  echo "please install lm_sensors"
}
senor_loop() {
  clear
  sensors
  sleep 1s
  senor_loop
}
check
senor_loop
