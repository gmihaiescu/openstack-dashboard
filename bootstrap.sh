#!/bin/bash
cd /usr/share/openstack-dashboard && python manage.py compress
apache2ctl start
