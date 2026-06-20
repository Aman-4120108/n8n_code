import sys
import json

name = sys.argv[1]

print(json.dumps({
    "greeting": f"Hello {name}"
}))