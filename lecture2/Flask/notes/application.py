from flask import Flask, render_template, request, session
from flask_session.__init__ import Session
app = Flask(__name__)

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesyste"

Session(app)

notes = []

@app.route('/', methods=["GET","POST"])
def index():
    if request.method == "POST":
        note = request.form.get("note")
        notes.append(note)
    return render_template("index.html", notes=notes)