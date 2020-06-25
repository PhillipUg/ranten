# Ranten
A safe place for devs to come and rant about whatever!. 

<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/PhillipUg/ranten">
    <img src="images/ranten.jpeg" alt="Logo" width="80" height="80">
  </a>

  <h1 align="center">Ranten</h1>

  <p align="center">
    This project is part of the Microverse curriculum and is done as a final project for the Ruby on Rails section.
    <br />
    <br />
    <a href="https://ranten-phillipug.herokuapp.com">View Demo</a>
    ·
    <a href="https://github.com/PhillipUg/ranten/issues">Report Bug</a>
    ·
    <a href="https://github.com/PhillipUg/ranten/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Testing](#testing)
* [Live Version](#live-version)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

This project is intended to be an MVP so its not at full functionality. It is also intended to be a twitter redesign. I have implemented the following feature:
* Users can create accounts and upload an avatar & cover photo
* Users can login with their usernames
* Users can create rants
* Users like and dislike rants
* Users can delete and edit rants
* Users can follow other users that they arem't already following
* Users can unfollow users that they are following

[![Product Name Screen Shot][product-screenshot]][screenshot-url]

<!-- ABOUT THE PROJECT -->
## Installation

To use this app locally, this is what you need to:
* Have ruby installed in your computer
* [Download](https://github.com/PhillipUg/ranten/archive/master.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:PhillipUg/ranten.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/PhillipUg/ranten.git
  ```
* `cd` into `ranten` directory and run `bundle install`
* Run `rails db:migrate` & `rails db:seed` to create and populate the database with sample data
* Finally, run `rails server` and go to `http://localhost:3000/` in your browser to see the app.
 

### Built With
This project was built using these technologies.
* Ruby v2.7.1
* Rails v6.0.3
* Postgres
* Google Cloud Storage
* Bulma-rails gem
* Gravatar ...etc.

### Tests
* Rspec
* Capybara
* Shoulda matchers

To run tests 
```
bundle exec rspec

```

<!-- LIVE VERSION -->
## Live version

You can try it live [here](ranten-phillipug.herokuapp.com/)

## Video Demo
In this [video demo](https://www.loom.com/share/9ba92a37201e43d981c3675af86dc5ad) i summarily take you through how i built this application

<!-- CONTACT -->
## Contact

👤 **Phillip Musiime**

- LinkedIn: [Phillip Musiime](https://www.linkedin.com/in/phillip-musiime-74657019a/)
- GitHub: [PhillipUg](https://github.com/PhillipUg)
- Twitter: [@Phillip_Ug](https://twitter.com/Phillip_Ug)
- E-mail: phillipmusiime@gmail.com

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/PhillipUg/ranten.svg?style=flat-square
[contributors-url]: https://github.com/PhillipUg/ranten/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/PhillipUg/ranten.svg?style=flat-square
[forks-url]: https://github.com/PhillipUg/ranten/network/members
[stars-shield]: https://img.shields.io/github/stars/PhillipUg/ranten.svg?style=flat-square
[stars-url]: https://github.com/PhillipUg/ranten/stargazers
[issues-shield]: https://img.shields.io/github/issues/PhillipUg/ranten.svg?style=flat-square
[issues-url]: https://github.com/PhillipUg/ranten/issues
[product-screenshot]: app/assets/images/ranten.gif
[screenshot-url]: https://ranten-phillipug.herokuapp.com

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.