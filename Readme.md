Fruits API Documentation
The Fruits API is a simple service that allows you to interact with a collection of fruits. This documentation provides an overview of the API endpoints and explains how to make GET and POST requests via the command line.

API Endpoints
The Fruits API provides the following endpoints:

Get all fruits: Retrieve a list of all fruits in JSON format.

Get a specific fruit: Retrieve information about a specific fruit in JSON format.

Add a fruit: Add a new fruit to the collection by sending a JSON payload.

1. Get all fruits
Request
bash
Copy
$ curl -X GET http://localhost:5000/fruits
Response
The response will be a JSON array containing objects representing each fruit. Each fruit object has the following properties:

id: The unique identifier of the fruit.
fruit: The name of the fruit.
color: The color of the fruit.
Example response:

json
Copy
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
2. Get a specific fruit
Request
bash
Copy
$ curl -X GET http://localhost:5000/fruits/<id>
Replace <id> with the numeric ID of the fruit you want to retrieve.

Response
The response will be a JSON object representing the specific fruit. The object will have the same properties as mentioned in the previous section.

Example response:

json
Copy
{
    "id": 1,
    "fruit": "apple",
    "color": "red"
}
3. Add a fruit
Request
bash
Copy
$ curl -X POST -H "Content-Type: application/json" -d '{"fruit": "<fruit_name>", "color": "<fruit_color>"}' http://localhost:5000/fruits
Replace <fruit_name> with the name of the fruit you want to add, and <fruit_color> with the color of the fruit.

Response
If the request is successful, you will receive a response with the status code 201 Created and the newly added fruit information in JSON format.

Example response:

json
Copy
{
    "id": 3,
    "fruit": "orange",
    "color": "orange"
}
Summary
The Fruits API provides simple CRUD operations for managing a collection of fruits. You can retrieve all fruits, get information about a specific fruit, and add new fruits to the collection. Use the provided cURL commands as examples to make GET and POST requests via the command line.