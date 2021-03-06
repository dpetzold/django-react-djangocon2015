# Installation

Install the python dependencies:

    mkvirtualenv myenv
    workon myenv
    pip install -r requirements.txt
    
Install the node dependencies:

    npm install
    
Initialize the database:

    python manage.py migrate
    python manage.py initial_photos
    
Compile the Javascript:

    node_modules/webpack/bin/webpack.js -d
    
# Execution

To run the Django server:

    workon myenv
    python manage.py runserver 0.0.0.0:8000
    
To run the Node server:

    node react-server.js
    
Then you may check out the 3 different versions:

- http://localhost:8000/ajax/
- http://localhost:8000/serialized/
- http://localhost:8000/pre-rendered/

Feedback and suggestions are welcome. Get in touch! [@julienphalip](https://twitter.com/julienphalip)