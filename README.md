# Eventbrite
Eventbrite: introduction and backend
This week, you will be working on a main project that is similar to Eventbrite. You will create a website where users can create events and register for them. The project will begin with the development of the application's backend, with a functional mailer in production.
1. Introduction
This week, you will be working on a main project that will accompany you throughout the week. At the end, you will have a functional application in production that you can use. The application will be a kind of Eventbrite applied to your city: users will be able to create events, set a price, upload a profile photo, and then visitors to the application will be able to join the events by paying the price. Of course, there will be user management with login/logout, and we've even planned an administrator interface to validate events in the application.
2. The Project
2.1. Project Specifications
The application will be a minimalist (but functional, which is the most important thing) version of Eventbrite, a site that offers lots of events you can join. The events only concern one city, the city where you are located. Here's what you can do:
When arriving on the home page, a visitor has access to events. A header provides links to important pages: home, create an event, register/log in, my profile
It is possible to register on the site with an email address.
A person registered on the site can propose an event. They will enter the title, a description, a start date, a duration, and a price.
On the page that displays the events, you will see the event information (description, date, duration, price, number of participants).
A logged-in person can join an event. They will click on a link to access an event registration form. On this form, they will enter their first name, last name, and credit card number to pay for the event.
A person who has created an event can access a page that displays the guest list. From this page, they can access a page to edit the event and even delete it.
Each user will have a profile page with their basic information (first name, last name, description). If a user is on their profile page, they have access to two links: one to edit their essential information (email, password) with the button to delete their account, and the other to edit profile information such as first name, last name, or description.
Actions that cannot be performed if the person is not logged in: join an event, create an event, access the “my profile” page.
On Thursday and Friday, we'll see how to add a profile photo to events and users, as well as an administrator interface to approve or reject events proposed by users. Basically, it's just a scaffold within a scaffold. But if you know how to implement them properly, you'll have a functional website that's ready to use. You'll be ready to compete with OnVaSortir!
