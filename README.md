# Find Your House Backend

##### This is a back-end API, which provides data to [this application](https://github.com/yahir91/frontend_houses) that I developed.

# Tracking app

This repo is an Api for a project to find houses to buy or to rent. It has a scrolling for better user experience in mobiles. It has differents interactive element like a toogle to see the navigation and the user Info. You can add to favorite the houses you like and change the selection of houses only to your favorites. It has a full functional login system and protected routes, so only a login user can enter the dashboard.

#### Features:
- Create a new user
- Require authentication for login
- Filter the password
- Create and get houses
- Add houses to favorites

#### Base URL for request
It's deployed [here]() on heroku

### Built With
This project was built using these technologies.
* Ruby on Rails
* rack-cors
* GitHub
* Rubocop
* Stylelint
* Eslint


### Getting Started
To get a local copy up and running follow these simple example steps.

### Clone
* Clone this repo:
  - Clone with SSH:
  ```
    git@github.com:yahir91/FIndhousesApi.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/yahir91/FIndhousesApi.git
  ```

### Setup

Install dependencies:

```
$ bundle install
```

Start the local webserver:

```$ rails s -p 4000``` will open the project at local webserver at http://localhost:4000/ 

### Using | Requests examples using JS with

for all request you will need base URL:
const baseUrl = `https://houses-api-yahir.herokuapp.com`


#### Create New House
```
data = {
  title,
  description,
  rent,
  file
}
const url = `${baseUrl}/houses`;
const config = `{
    method: 'POST',
    mode: 'cors',
    headers: {
      'Content-Type': 'application/json',
      Authorization: ` Bearer ${token} `,
    },
    body: JSON.stringify(data),
  }`
```

#### Get all Houses
```
const url = `${baseUrl}/houses`;
const config = `{
    method: 'GET',
    mode: 'cors',
    headers: {
      Authorization: `Bearer ${token} `,
    }`
```

#### Get all Favorites Houses (Need to be log in)
```
const url = `${baseUrl}/favorites`;
const config = `{
    method: 'GET',
    mode: 'cors',
    headers: {
      Authorization: `Bearer ${token} `,
    }`
```
#### Get a House
```
const url = `${baseUrl}/houses/id`;
const config = `{
    method: 'GET',
    mode: 'cors',
    headers: {
      Authorization: `Bearer ${token} `,
    }`
```

#### Add house to favorite (Need to be log in)
```
data ={
  house: params[id]
}
const url = `${baseUrl}/favorites`;
const config = `{
    method: 'POST',
    mode: 'cors',
    headers: {
      Authorization: `Bearer ${token}`,
    }`,
    body: JSON.stringify(data), 
```
#### Remove house from favorite (Need to be log in)
```
const url = `${baseUrl}/favorites/id`;
const config = `{
    method: 'DELETE',
    mode: 'cors',
    headers: {
      Authorization: `Bearer ${token}`,
    }`,
```

#### Create User and Session (Sing up)
```
data = {
  email,
  name,
  password,
  password_confirmation
}
const url = `${baseUrl}/users/sign_up`;
const config = `{
    method: 'POST',
    mode: 'cors',
    headers: { 'Content-Type': 'application/json' },
    redirect: 'follow',
    body: JSON.stringify(data),
  },`
```

#### Create Session (Login)
```
data = {
  email,
  password
}
const url = `${baseUrl}/users/sign_in`;
const config = `{
    method: 'POST',
    mode: 'cors',
    headers: { 'Content-Type': 'application/json' },
    redirect: 'follow',
    body: JSON.stringify(data),
  }`
```

#### Destroy session (Sing out, Need to be log in ) 
```
const apiUrl = `${baseUrl}/users/sign_out`;
const config = `{
    method: 'DELETE',
    mode: 'cors',
    headers: { 'Content-Type': 'application/json' },
    redirect: 'follow',
  }`
```

## Authors

## 👤 **Yahir Cardona**
Working as a FullStack developer on this project.

 [![Website](https://img.shields.io/badge/-Website-black?style=for-the-badge&logo=Julia&logoColor=white)](https://yahir91.github.io/yahir-cardona.github.io/)

 [![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/yahir-cardona/)

## Show your support

Give a :star: if you like this project!

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.