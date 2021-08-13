# golang-postgresql
Examples connecting to PostgreSQL

<br>
<h2>Dockerfile</h2>
Create the image, this line tells Docker to build an image from the Dockerfile and give it a name of 'my-postgres-db':<br>
`docker build -t my-postgres-db ./`

<br>We got our own image called **'my-postgres-db'**. We can run it as a container by doing:<br>
`docker run -d --name my-postgresdb-container -p 5432:5432 my-postgres-db`

To enter the container:<br>
`docker exec -it postgres-docker bash`
+ *exec*  we’ve entered a postgres-docker image
+ *-it*   in detached mode
+ *bash*  to run its bash app

<br>You need to use the following connection details to connect to the DB:

+ *Host*: localhost
+ *Port*: 5432
+ *User*: postgres
+ *Password*: docker (from Dockerfile)

<br>To see the images:<br>
`docker images -a`

<br>To remove images:<br>
`docker image rm 'nameOfTheImage'`

