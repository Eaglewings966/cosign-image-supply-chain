from http.server import HTTPServer, BaseHTTPRequestHandler
import json
import os

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        body = json.dumps({
            "status": "ok",
            "app": "supply-chain-demo",
            "signed": True,
            "sbom": "attached",
        }).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", len(body))
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, *args):
        pass

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    HTTPServer(("", port), Handler).serve_forever()
