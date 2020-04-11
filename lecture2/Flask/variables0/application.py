from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    headLine = "Hello!"
    return render_template("index.html", headLine=headLine)

@app.route('/bye')
def bye():
    headLine = "Bye!"
    return render_template("index.html", headLine=headLine)
