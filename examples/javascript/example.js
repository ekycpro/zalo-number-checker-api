// Browser code must call a same-origin backend proxy; never expose an API key.
fetch("/api/check-proxy",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify({"service_type":"zalo","identifier":"+14155550100"})}).then(r=>r.json()).then(console.log);
