# How to run

1. `npm install`
2. `npm run server`

## You can check data with POSTMAN

1. Download [ Postman ](https://www.postman.com/downloads/) and install.
2. Create account and login to Postman which is just downloaded.
3. Watch this video to know where to test api [ Postman API video ](https://www.youtube.com/watch?v=f5y_sD6MfBc) (can skip to 08:42)
4. Test GET with
    - http://localhost:4040/api/companyinfo
    - http://localhost:4040/api/stocks

---

## Google oAuth2.0

-   http://localhost:4040/auth/google => request to login with google. It has 2 outcomes:

    1.http://localhost:4040/auth/success => login successfully. The info of user's google account will be added into DB if it has not already been created. The session will also be created and saved to the DB.
    2.http://localhost:4040/auth/failure => login failed

-   http://localhost:4040/auth/logout => logout account on the application. The session will be destroyed and removed from the DB.
