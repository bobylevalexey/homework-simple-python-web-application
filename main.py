__author__ = 'Alexey'

from bottle import route, run, template, request
from MyModel import AddressModel
import httplib
import urllib2

ADDR_DB = 'addresses.db'

@route('/')
def index():
    return template('index', content=False)

@route('/shorten', method='POST')
def shorten():
    address = request.forms.get('address')
    if model.exist_address(address):
        return template('index', content=address+': localhost:8051/'+model.get_id(address))
    else:
        try:
            urllib2.urlopen('http://'+address)
            addrid = model.new(address)
            return template('index', content=address+': localhost:8051/'+addrid)
        except:
            return template('index', content="Can't accept this url")

@route('/<num>')
def goto(num):
    if model.exist_id(num):
        return '<meta http-equiv="refresh" content="0; http://' + model.get(num) + '">'
    else:
        return template('index', content='Incorrrect link')

model = AddressModel(ADDR_DB)
run(host = 'localhost', port = 8051)