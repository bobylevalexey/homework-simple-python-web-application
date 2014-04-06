__author__ = 'Alexey'

import shelve
import random

class AddressModel(object):
    def __init__(self, db_file):
        self._db=shelve.open(db_file)

    def exist_id(self, addrid):
        return addrid in self._db

    def exist_address(self, address):
        return address in self._db.values()

    def new(self, address):
        addrid = str(random.randint(1000,9999))
        while addrid in self._db:
            addrid = str(random.randint(1000,9999))

        self._db[addrid] = address
        self._db.sync()
        return addrid

    def get(self, addrid):
        return self._db.get(addrid)

    def get_id(self,address):
        for id in self._db.keys():
            if self._db[id] == address:
                return id
        return False