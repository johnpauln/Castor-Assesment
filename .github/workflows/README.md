# Fruits API Quick Guide 🍎🍌🍊

# Welcome to the Fruits API, a simple service to manage your favorite fruits! Here's a quick overview to get you started.

**Getting Started 🚀

1. ## Run the API
To access the API, open `terminal` and run the following Docker commands:

docker build -t "image-name" .
docker run -p 5000:5000 -v .:/app "image-name"

This maps your local port 5000 to the container's port 5000. For storage persistence, we use local volumes. In a prdouction environment we woould use more advanced volumes like AWS EBS.

2. ## Testing Locally
To test the code locally, use:


 `python3 -m pytest`

API Endpoints 🌐

1. ## Get All Fruits
Retrieve a list of all fruits in JSON format.


 `curl -X GET http://localhost:5000/fruits`

2. ## Get a Specific Fruit
Retrieve information about a specific fruit by replacing <id> with the numeric ID.


 `curl -X GET http://localhost:5000/fruits/<id>`
3. ## Add a Fruit
Add a new fruit to the collection with a JSON payload.


 `curl -X POST -H "Content-Type: application/json" -d '{"fruit": "<fruit_name>", "color": "<fruit_color>"}' http://localhost:5000/fruits`
Response Examples 📋

## Get All Fruits Response
json
Copy code
[
    {
        "id": 1,
        "fruit": "apple",
        "color": "red"
    },
    {
        "id": 2,
        "fruit": "banana",
        "color": "yellow"
    },
    ...
]
## Get Specific Fruit Response
json
Copy code
{
    "id": 1,
    "fruit": "apple",
    "color": "red"
}
Add Fruit Response
json
Copy code
{
    "id": 3,
    "fruit": "orange",
    "color": "orange"
}


## Pipeline Overview 🛠️

The pipeline is divided into two stages: test and build.

Test Stage: Ensures the app works as designed.
Build Stage: Builds, tags, and pushes images to DockerHub.
The build stage relies on the test stage for success. If there's an exit code other than 0 in the test stage, the build won't proceed.

Happy Fruits Buying! 🎉🍇

Celebrate your love for fruits with this simple CRUD operations. Manage, retrieve, and add fruits effortlessly. Use the provided CURL commands as examples for GET and POST requests via the command line. Enjoy your Fruits API experience! 🍍🍉