from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def homepage():
    return render_template("Draft2.html")

@app.route('/hello/<name>')
def hello(name):

    if name == "Wiktor":
        return "FUCK YOU"
    elif name == "Michael":
        return "I LOVE YOU"

if __name__ == "__main__":
    app.run()
