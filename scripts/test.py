import json
from datetime import datetime

result = {
    "status": "success",
    "message": "Hello from Python",
    "timestamp": datetime.now().isoformat()
}

print(json.dumps(result))
