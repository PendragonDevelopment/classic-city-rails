## Rise Box Roadmap

Features:

- User Accounts
- Admin Accounts
- Box Management
- Item Management
- Order Management
- Guest Checkout
- Recurring Subscriptions

### Users, Admins, Guests, and Subscriptions

- Users should be able to sign up for an account
- Users should be able to add an address for box delivery
- Users should be able to add profile details
- Users should be able to set up a payment method for checkout
- Users should not have to log in and can complete a purchase as a Guest
- Guests should be able to create an account at checkout if desired
- Admins should be able to invite Users
- Admins should be able to remove or update Users

### Boxes, Items, and Orders

- Admins should be able to create, update, and remove Boxes
- Users and Guests should be able to view Boxes
- Admins should be able to create, update, and remove Items
- Admins should be able to add Items to Boxes at the time of Box creation or update
- Admins should be able to create Items at Box creation
- Users and Guests should not be able to view Items independent of the Box in which they are contained
    + ie, Users can only see that Rise Box provides Gatorade in the context of viewing a Box that has an Item Gatorade
- Users and Guests should be able to add multiple Boxes, in both quantity and variety, to a cart
- A User's cart should only exist for the duration of the User's session
- A User's cart should become an Order on successful checkout
- For Subscriptions, an Order will be created for each date selected and allowed by the Subscription plan
- Admins should be able to view and update Orders
- Users should be able to view their Orders
- Users should be able to create repeat Orders based on previous Orders
    + ie, A User can select a previous Order from their account and choose to re-order the same Box(es)
- Users, Guests, and Admins should receive an email detailing their Order when completed