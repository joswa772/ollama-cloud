import requests

url = "https://your-railway-url.up.railway.app/api/pull"
data = {"name": "llama3"}

response = requests.post(url, json=data)

print("Status:", response.status_code)
print("Response:", response.text)