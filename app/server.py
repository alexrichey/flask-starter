from flask import Flask, request, render_template

app = Flask(__name__)


@app.route("/", methods=["GET", "POST"])
def root():
    if request.method == "GET":
        return render_template(
            "home.html",
            title="Hi there",
            description="Super basic template",
        )
    elif request.method == "POST":
        post_val = request.form.get("post_key")
        return {"key": post_val}, 200
    else:
        return {"key": "ERROR!"}, 400


if __name__ == "__main__":
    app.run()
