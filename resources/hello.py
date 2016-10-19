# -*- coding: utf-8 -*-
# !/usr/bin/env python
from flask_restful import Resource, reqparse

# from db.mongo import mgdb

helloparser = reqparse.RequestParser()
helloparser.add_argument("name")
helloparser.add_argument("id")


class HelloWorld(Resource):

    def get(self):
        args = helloparser.parse_args()
        pass

    def post(self):
        args = helloparser.parse_args()
        pass

