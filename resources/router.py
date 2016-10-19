# -*- coding: utf-8 -*-
# !/usr/bin/env python

from resources import api

from resources.hello import HelloWorld

api.add_resource(HelloWorld, '/v1/hello')
