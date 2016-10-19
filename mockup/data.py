data = [
    {
        "id": "uqa-xxx1",
        "name": "x",
        "role": "administrator"
    },
    {
        "id": "uqa-xxx2",
        "name": "y",
        "role": "administrator"
    },
    {
        "id": "uqa-xxx3",
        "name": "z",
        "role": "administrator"
    },
    {
        "id": "uqa-xxx4",
        "name": "a",
        "role": "administrator"
    },
]


def getData():
    return data


def getDataInfo(name):
    for item in data:
        if item["name"] == name:
            return item


def setDataInfo(mid, name):
    for item in data:
        if item["id"] == mid:
            item["name"] = name
            return item
        else:
            return False
