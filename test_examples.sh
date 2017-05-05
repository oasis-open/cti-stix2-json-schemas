#!/bin/bash

stix2_validator --schemas `pwd`/schemas -r examples --strict --ignore 302
