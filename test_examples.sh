#!/bin/bash

ajv compile -s "schemas/*/*.json" -r "schemas/*/*.json" --verbose
stix2_validator --schemas `pwd`/schemas -r examples --strict --ignore 302
