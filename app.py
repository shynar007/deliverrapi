from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def deliverr_api():
    return jsonify(data="Hello from Deliverr Coy")


if __name__ == "__main__":
    app.run()