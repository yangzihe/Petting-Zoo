VIEWS
=====

Home page (index.html)
----------------------

  * list of interactions
  * links to visitors
  * links to pens

Pens
----

### Pen (pen/index.html)

  * list of animals and their stats
  * each animal:
    * dropdown menu to select interaction
    * submit button

### Pens (pen/show.html)

  * list of pens with name # of animals in each

Persons
--------

### Persons (person/index.html)

  * list of persons and links

### Person (person/show.html)

  * display person's name, email
  * list of interactions


CONTROLLERS
===========

pens_controller
---------------

  **index** - displays all pens

  **show** - gets id of pen and displays animals in pen

  **new** - form in html

  **create** - creates the pen by taking in name, max occupancy


animals_controller
------------------

  **new** - form for new animal

  **create** - creates the animal by taking in species

  **feed** - adds energy to animal

  **delete** - destroys animal


persons_controller
------------------

  **index** - displays all persons

  **show** - gets id of person and shows interactions of that person


interactions_controller
-----------------------

  **create** - takes in animal, current person, and interaction selected
