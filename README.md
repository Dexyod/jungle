# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

 - landing page

![main page](docs/Jungle-main.png)

- sold out badge
 
![login](docs/sold-out.png)

- product show with no reviews
 
![product show](docs/review-1.png)

- product show with reviews
 
![reviews](docs/review-2.png)

- empty-cart
 
![empty-cart](docs/empty-cart.png)

- full-cart
 
![full-cart](docs/full-cart.png)

- post order email and screen
 
![post order email and screen](docs/post-order-email.png)

- Sign-up
 
![sign-up](docs/sign-up.png)

- Login
 
![Login](docs/Login.png)

- admin-sign-in
 
![admin-sign-in](docs/admin-sign-in.png)

- admin-dashboard
 
![admin-dashboard](docs/admin-dashboard.png)

- category-admin
 
![category-admin](docs/category-admin.png)

- sales-admin
 
![sales](docs/sales.png)

- products-admin
 
![products-admin](docs/admin-products.png)

