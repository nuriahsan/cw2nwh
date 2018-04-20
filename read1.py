import urllib2,json,base64
accessstoken="N32FLJAJCTRC9JJBKH8C"
url="http://data.unistats.ac.uk/api/v4/KIS/Institution/10007800.json"
request=urllib2.Request(url)
request.add_header(
	"Authorization",
	"Basic "+base64.encodestring(accessstoken+":").replace('\n','')
	)
response=urllib2.urlopen(request)
data=json.load(response)
print (data['Name'])
print (data['UKPRN'])