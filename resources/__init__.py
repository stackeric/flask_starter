# -*- coding: utf-8 -*-
# !/usr/bin/env python
from flask import Flask
from flask.ext.cors import CORS
from flask_restful import Api


app = Flask(__name__)
cors_options = {"supports_credentials": True}
cors = CORS(app, **cors_options)
api = Api(app)


from resources import router

