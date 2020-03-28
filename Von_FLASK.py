from flask import Flask, redirect, url_for, render_template
import sqlite3

app=Flask(__name__)

@app.route('/')
def base():
    return render_template('base.html')

@app.route('/index')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)



