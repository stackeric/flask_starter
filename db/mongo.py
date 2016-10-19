# -*- coding: utf-8 -*-
# !/usr/bin/env python
from pymongo import MongoClient
debugger = "127.0.0.1"
client = MongoClient(debugger, 10000)

mgdb = client.apitest

if __name__ == "__main__":

    result = mgdb.group.find({})
    resultlist = list()
    for item in result:
        resultlist.append(item["groupname"])

    print resultlist
