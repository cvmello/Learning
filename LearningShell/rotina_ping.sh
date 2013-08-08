#!/bin/bash

for IP in $(seq 1 10); do
	ping -c 1 10.4.104.$IP > /dev/null && echo "10.4.104.$IP UP" || echo "10.4.104.$IP DOWN"
done