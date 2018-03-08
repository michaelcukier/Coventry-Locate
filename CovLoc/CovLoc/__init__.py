from flask import Flask, render_template
import MySQLdb

app = Flask(__name__)

db = MySQLdb.connect(host="localhost",  # your host
                     user="root",  # username
                     passwd="cukier",  # password
                     db="testbruh")  # name of the database

@app.route('/')
def homepage():
    cur = db.cursor()
    cur.execute("SELECT * FROM buildings")
    array_of_buildings = []
    for row in cur.fetchall():
        array_of_buildings.append(row[1])

    return render_template("index.html", array_of_buildings=array_of_buildings)

if __name__ == "__main__":
    app.run()
