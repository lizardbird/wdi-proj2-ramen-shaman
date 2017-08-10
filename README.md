# RAMEN SHAMAN (wdi-proj2-ramen-shaman)
This repo contains all files needed to run the Ramen Shaman app.
An application for finding, reviewing, and commenting on bowls of ramen and the restaurants where they are served.

![preview](screenshot.png)
![preview](screenshot1.png)
![preview](screenshot2.png)
![preview](screenshot3.png)
![preview](screenshot4.png)
![preview](screenshot5.png)

## Current Features
- Users can create, access, and manage their own bowls of ramen
- Users can create, access, and manage their own comments on various bowls
- Users can add topping tags to their bowl, and view other bowls with that topping
- Users can select, create, access, and manage restaurants where the bowl was eaten
- Users can favorite items and view them on their profile page

## Technologies Used
- Ruby on Rails
- HTML/CSS
- Yelp Fusion API
- PostgreSQL

## Installation Instructions
To set up the app locally on your own system:
1. Fork and clone the [project repository](https://github.com/lizardbird/wdi-proj2-ramen-shaman)
2. Install all dependencies locally  
    ```
    bundle install
    ```
3. Ensure you have [PostgreSQL](https://www.postgresql.org/) installed and running. Then, to set up your database:
    ```
    rails db:create
    rails db:migrate
    ```
4. Lastly, start up your server and navigate to the indicated port number in your browser:
    ```
    rails s
    ```

## Contribute
- Source code: https://github.com/lizardbird/wdi-proj2-ramen-shaman
- Issue Tracker: https://github.com/lizardbird/wdi-proj2-ramen-shaman/issues
