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
    + We can build this using Devise
- Users should be able to add an address for box delivery
    + Creating a separate Address model will allow Users to set multiple addressses for both billing and delivery, much like Amazon
    + ```User has_many :addresses -> Address belongs_to :user```
- Users should be able to set up a payment method for checkout
    + This requires us storing the Customer Id from Stripe, the card token, and the last four digits for verification
- Users should not have to log in and can complete a purchase as a Guest
    + We can do this using the Stripe Checkout.js integration
- Guests should be able to create an account at checkout if desired
    + If they want to sign up for an account, all we will need in addition to their email address (which should be required) is a password and password confirmation
- Admins should be able to invite Users
    + We can add this using Devise Invitable
- Admins should be able to remove or update Users

### Boxes, Items, and Orders

- Admins should be able to create, update, and remove Boxes
    + We don't necessarily need an Admin UI, but restricting certain routes to Admins using Devise can help us manage this
- Users and Guests should be able to view Boxes
    + Whether through a custom route, or right on the home page, we obviously want to give Users and Guests an opportunity to purchase boxes
- Admins should be able to create, update, and remove Items
    + This can be through the same interface as the Box management functions
- Admins should be able to add Items to Boxes at the time of Box creation or update
    + Through drop downs that pull from the Items table: https://github.com/plataformatec/simple_form#collections and https://github.com/plataformatec/simple_form#collections
- Admins should be able to create Items at Box creation
- Users and Guests should not be able to view Items independent of the Box in which they are contained
    + ie, Users can only see that Rise Box provides Gatorade in the context of viewing a Box that has an Item Gatorade
- Users and Guests should be able to add multiple Boxes, in both quantity and variety, to a cart
- A User's cart should only exist for the duration of the User's session
    + We can accomplish this by storing a hash in the session variable with the Box id as the key and the quantity as the value
    + eg ```{"cart" => {"1" => "3", "3" => "7", "4" => "1"}}```
- A User's cart should become an Order on successful checkout
    + The cart hash will create a OrderBox record for every quantity
    + eg ```params[:cart].map { |box, qty| }
- For Subscriptions, an Order will be created for each date selected and allowed by the Subscription plan
- Admins should be able to view and update Orders
- Users should be able to view their Orders
- Users should be able to create repeat Orders based on previous Orders
    + ie, A User can select a previous Order from their account and choose to re-order the same Box(es)
- Users, Guests, and Admins should receive an email detailing their Order when completed