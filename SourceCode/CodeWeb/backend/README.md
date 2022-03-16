- [How to run](#how-to-run)
  - [You can check data with POSTMAN](#you-can-check-data-with-postman)
- [Routes](#routes)
  - [CompanyInfo](#companyinfo)
    - [CompanyInfo search](#companyinfo-search)
  - [Stocks](#stocks)
  - [Predictions](#predictions)
  - [Reminders](#reminders)
  - [Google oAuth2.0](#google-oauth20)

---

# How to run

1. `npm install`
2. `npm run server`

## You can check data with POSTMAN

1. Download [ Postman ](https://www.postman.com/downloads/) and install.
2. Create account and login to Postman which is just downloaded.
3. Watch this video to know where to test api [ Postman API video ](https://www.youtube.com/watch?v=f5y_sD6MfBc) (can skip to 08:42)

---

# Routes

## CompanyInfo

-   http://localhost:4040/api/companyinfo
-   http://localhost:4040/api/companyinfo/[ticker]

### CompanyInfo search

-   http://localhost:4040/api/companyinfo?comapanyname=asia&stockexchange=hnx...
    |Parameters|Description|Type|
    |----------|-----------|----|
    |companyname|company name query (does not need full name)| String|
    |stockexchange| stockexchange query. Available options: <br/> `hnx`, `hose`, `upcom` | String|
    |industry| industry query. Availabe options:<br/> `Basic Materials`, `Consumer Goods`, `Financials`, `Health Care`, `Industrials`, `Oil & Gas`, `Technology`, `Utilities`, `others`| String|

**!NOTE:**`&` is replaced with `%26` in URL

## Stocks

-   http://localhost:4040/api/stocks
-   http://localhost:4040/api/stocks/[ticker]

## Predictions

-   http://localhost:4040/api/predictions/[ticker]

## Reminders

-   http://localhost:4040/api/reminders

## Google oAuth2.0

-   http://localhost:4040/auth/login => request to login with google http://localhost:4040/auth/google. It has 2 outcomes:

    1.http://localhost:4040/auth/success => login successfully. The info of user's google account will be added into DB if it has not already been created. The session will also be created and saved to the DB.

    -   If user does not login, he/she **cannot** access this route.

    2.http://localhost:4040/auth/failure => login failed

-   http://localhost:4040/auth/logout => logout account on the application. The session will be destroyed and removed from the DB.
