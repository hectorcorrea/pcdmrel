# PCDM Relational
An attempt to implement the Portland Common Data Model (PCDM) using a relational database in a typical Rails application.

For information about PCDM take a look at https://github.com/duraspace/pcdm/wiki


## Relational Database
The project is currently using MySQL but the idea should work with any relational database.

Below is a short description of the tables that are used and their purpose:
* **collections**: Represents pcdm:Collection
* **coll_colls**: Represents the recursive pcdm:hasMember in pcdm:Collection
* **works**: Represents pcdm:Object (avoided using Object since it's a reserved word in Ruby)


## To get started
This repo does not provide a user interface at this point, but you can play with it via the Rails console.

```
git clone this repo
cd pcdmrel
bundle install
bundle exec rails console
```

## A simple demo
From the rails console

```
# Create a few sample collections
master = Collection.create(title:"Books collection")
red = Collection.create(title:"Red Books collection")
blue = Collection.create(title:"Blue Books collection")
color = Collection.create(title:"Books by Color collection")
small = Collection.create(title:"Small Books collection")

# Make all collections part of the books collection
CollColl.create(order:1, collection:master, has_member:red)
CollColl.create(order:2, collection:master, has_member:blue)
CollColl.create(order:3, collection:master, has_member:color)
CollColl.create(order:5, collection:master, has_member:small)

# Make the red and blue collection part of the books by color collection
CollColl.create(order:1, collection:color, has_member:red)
CollColl.create(order:2, collection:color, has_member:blue)
```

