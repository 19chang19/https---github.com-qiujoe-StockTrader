#encoding:utf-8
import os
import matplotlib.pyplot as plt
import struct
from time import *
from glob import glob
import matplotlib.pyplot as pl

import re,urllib2
from bs4 import BeautifulSoup #,Tag,CData;
from matplotlib.ticker import MultipleLocator, FuncFormatter

file_names = glob('score*')
#file_names = glob('industry*')
file_names.sort()
stock = {}
xlabel = file_names[0]
for fname in file_names:
	f = open(fname, 'r')
	print fname
	summ = 0
	stock_t = {}
	while 1:
		line = f.readline()
		#print line
		if not line:
			break
		array = line[:-1].split('%')
		a = array[0].decode('utf-8')
		print "array[2]"
		print a	#array[2]		#取到是%号后的1

		#if stock_t.has_key(a):
		#	stock_t[a].append(int(array[2]))
		#else:
		stock_t[a] = int(array[2])
	
		#print line
		summ += int(array[2])
	for key in stock_t:
		if stock.has_key(key):
			stock[key].append(stock_t[key]/float(summ))
		else:
			stock[key] = [stock_t[key]/float(summ)]		
	print "stock[key]"
	print stock[key]	#[0.1111111111111111]
	print key			#保利地产

#url = 'http://quotes.money.163.com/trade/lsjysj_'+ '601800'+'.html?year=2014&season=4'
url = 'http://quotes.money.163.com/trade/lsjysj_'+ '600030'+'.html?year=2014&season=4'
print url
#print("股票代码:" + stock_num)
headers = {"User-Agent":"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6"}
req = urllib2.Request( url, headers = headers)
try:
    content = urllib2.urlopen(req).read()
except Exception,e:
    print e
    #return 0
soup = BeautifulSoup(content)
xlabel = xlabel[5:-4]
xlabel = xlabel[8:-4]
table = soup.find('table',class_='table_bg001 border_box limit_sale')
tr = table.findAll('tr')

#print td
web = {}
for i in range(1, len(tr)):
	td = tr[i].findAll('td')

	web[td[0].contents[0]] = (td[4].contents[0])


url = 'http://quotes.money.163.com/trade/lsjysj_'+ '600030'+'.html'
print url
#print("股票代码:" + stock_num)
headers = {"User-Agent":"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6"}
req = urllib2.Request( url, headers = headers)
try:
    content = urllib2.urlopen(req).read()
except Exception,e:
    print "Exception:"+e
    #return 0
soup = BeautifulSoup(content)
xlabel = xlabel[5:-4]
xlabel = xlabel[8:-4]
table = soup.find('table',class_='table_bg001 border_box limit_sale')
tr = table.findAll('tr')

for i in range(1, len(tr)):
	td = tr[i].findAll('td')

	web[td[0].contents[0]] = (td[4].contents[0])




print web

y2=[]
for fname in file_names:
	nm = fname[5:-4]
	nm = fname[5:-4]
	if web.has_key(nm.decode('utf-8')):
		y2.append(float(web[nm.decode('utf-8')]))
	else:
		y2.append(0)

print "y2"
print y2
fig = plt.figure()
f = fig.add_subplot(111)
f2 = fig.add_subplot(111)
#ax = plt.gca()
#ax.xaxis.set_major_locator( MultipleLocator(1) )
for key in stock:
	#key = u'中信证券'
	#key = u'中国交建'
	x = range(len(stock[key]))
	print "y"
	print stock[key]
	y = stock[key]

yy1 = []
yy2 = []
for i in range(len(stock[key])):
	if y[i] != 0 and y2[i] !=0:
		yy1.append(y[i])
		yy2.append(y2[i])

print "yy2"
print yy2

#normal
minn = min(yy1)
maxx = max(yy1)
yy1 = [ (t - minn) / (maxx - minn) for t in yy1 ]

minn = min(yy2)
maxx = max(yy2)
yy2 = [ (t - minn) / (maxx - minn) for t in yy2 ]


x = range(len(yy1))
#t =float(sum(y))
#y = [ a / t for a in y]
#print t
print x, y
plt.xlabel(xlabel)
print xlabel
f.plot(x, yy1, color = 'red')

f2.plot(x, yy2)
plt.savefig("1.png")  
#
plt.show()
#break
