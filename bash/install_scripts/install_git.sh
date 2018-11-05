#!/bin/bash

apt-get update -y
apt-get install git
apt-get autoremove
apt-get clean all -y
