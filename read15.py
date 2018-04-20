import urllib2, json, base64
accesstoken="N32FLJAJCTRC9JJBKH8C"
url="http://data.unistats.ac.uk/api/v4/KIS/Binstitutions.json"
request=urllib2.Request(url)
request.add_header(
	"Authorization",
	"Basic "+base64.encodestring(accesstoken+":").replace('\n','')
	)
response=urllib2.urlopen(request)
data=json.load(response)
for c in data:
	print (c['UKPRN'],c['Name'])