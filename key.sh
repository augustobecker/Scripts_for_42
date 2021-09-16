#!/bin/sh
eval $(ssh-agent -s)
chmod 600 42
ssh-add 42
