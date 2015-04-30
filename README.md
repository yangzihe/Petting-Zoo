**Title:** Petting-Zoo  <br />
**Team Members:** Yangzi He, Jackie Kim, Rachel Lee, Eric Zhao  <br />
[**Demo Link**](https://drive.google.com/file/d/0B7tY2oHWptXOb0Q4Y0ZRWTd6cE0/view?usp=sharing)   <br />
[**Heroku**](https://glacial-citadel-1688.herokuapp.com/)
**Idea:** A game that allows people to visit a petting zoo and interact with the different animals in each pen  <br />
**Models and Description:**  <br />
*Person* <br />
has name, email and many interactions <br />
certain People are Zookeepers with administrative access <br />
*Pen*   <br />
has name, capacity, and many animals   <br />
*Animal*   <br />
has species, energy, pen_id and belongs to a pen <br />
*Interaction*  <br />
has act and belongs to a person  <br />
**Features:**  <br />
Users can log in and interact with animals which reduces their energy    <br />
Only zookeepers can manage pens and animals and restore animals' energy by feeding them  <br />
**Division of Labor:**   <br />
Yangzi:  made pen model and controller, and integrated animals into the views of individual pens. Added CRUD operations for Pens.<br />
Jackie: made animal model & controller, made the write-up  <br />
Rachel:  made the person model & controller, 2 minute video<br />
Eric:  made interactions model and controller; implemented devise and cancan; deployed app to heroku<br />

