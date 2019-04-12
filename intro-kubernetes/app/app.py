import socket
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return f"Welcome to the session !!! Serving from the domain: {socket.gethostname()}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)