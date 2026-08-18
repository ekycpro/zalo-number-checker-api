import os,requests
key=os.environ.get("EKYCPRO_API_KEY");
if not key: raise SystemExit("Set EKYCPRO_API_KEY")
r=requests.post("https://api.ekycpro.com/v1/check",headers={"X-API-Key":key},json={"service_type":"zalo","identifier":"+14155550100"},timeout=60);r.raise_for_status();print(r.json())
