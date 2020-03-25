# COINLENS

Currently deployed via Heroku @ https://coinlens.herokuapp.com/

Build version: 0.0  
Ruby version: 2.5.0  
Database: PostgreSQL  

**Abstract**:  
CoinLens is a web-application platform that will tie in traditional stock market investment holdings with new cryptocurrency investment holdings. Our platform will provide users with a portfolio tracking service for both stocks and cryptocurrencies where they can easily view and analyze the performance of their investment portfolios. Some of the basic features include: the ability to track specific stocks and cryptocurrencies in a watchlist, enter and import transactional data from stock and cryptocurrency exchanges to update their portfolio holdings, calculate their portfolio worth, view charts for various stocks and cryptocurrencies, and display and analyze historical portfolio performance. We will also integrate an online discussion board that will allow users to ask and answer questions, share their portfolios, receive constructive feedback on their portfolios, or simply engage in discussion with other investors. As cryptocurrencies is a relatively new form of investment, our focus is to integrate this into a platform that traditional stock market investors are used to without overwhelming the user with too much information. All of these features will be tied together in a simple, clean user interface, allowing ease-of-use with the click of just a few buttons.

**Customer**:  
CoinLens will target two types of customers: users with experience investing in other securities such as stocks and mutual funds, and users with no investing experience.

For users with investing experience, CoinLens will tie together their traditional investment portfolios with their new cryptocurrency investment portfolios and combine them into one portfolio that can be viewed and tracked. For users without investing experience, CoinLens will be the platform to ease them into the world of investing albeit stocks or cryptocurrencies. The discussion forum will also help facilitate their learning experience in a peer-to-peer setting. The focus of our simple UI is to make sure the user is not overwhelmed with too much information as they slowly learn about the different stocks and cryptocurrencies that they can invest in.

While our target market does not include advanced investors with a lot of experience, they are also welcomed to use our platform simply for portfolio tracking services. For other services such as technical analysis charts (ex. MACD, Fibonacci retracement), market sentiment and signals, interactive charts and tools used by experienced investors, we believe there are already plenty of platforms that offer this (ex. TradingView). Therefore, these tools are not included in our implementation list at this moment.

**Competitive Analysis**:  
As of this moment there are two main competitors offering a similar service: *Altpocket* and *Stockfolio*, one of which is a cryptocurrency portfolio tracker and the other is a real-time stock and cryptocurrency portfolio application. 

First, *Altpocket* currently offers portfolio tracking for only cryptocurrencies, not other types of securities such as stocks and derivatives. This means that the user is unable to integrate their stock portfolio into the platform – making it difficult to track their investment portfolio as a whole and compare both the performance of their stocks and their cryptocurrencies. *Stockfolio* offers portfolio services for both stocks and cryptocurrencies, but their platform is only released on the MacOS. Additionally, their platform lacks the functionality to import their trading history from other stock and cryptocurrency exchanges – a deal breaker for investors that have experienced the hassle of entering each transaction across multiple exchanges. 

Both of our competitors provide portfolio tracking services for experienced cryptocurrency investors and do not focus on attracting investors that are new to this space. We believe that CoinLens is a more user-friendly platform that offers key functionality that our two competitors do not yet offer.

**User Stories**:  
As a beginner investor, I want to experience a brief introduction to understanding what cryptocurrency is and how to start investing, which I can do so on the platform. If I have any questions or issues that I want to address, I can participate in the discussion forum and engage in conversations with peers so that we can learn together – this will be resolved through our simple UI and discussion forum.

As an intermediate investor, I want to aggregate my holdings across all of my different stock and cryptocurrency exchanges and see an overall view of my portfolio performance. I want to access the information quickly and also keep track of any investment tickers that are of interest to me – this will be resolved through our portfolio tracker, watchlist and trading history implementation.

As an advanced investor, I want to view my historical performance and statistics and decide which investment strategy I should follow in the future. I also want to see real-time price updates and participate in discussions to help others learn about cryptocurrencies – this can be done through our database and API implementations.

As an administrator of the website, I want to be able to manage the content on the discussion forum to ensure that it reflects a healthy learning environment. I also want to pin useful posts and guides that will help beginner investors ease into the stock and cryptocurrency investment process – this can be done through server-side DB integrations that interact with the UI over administrator privileges. 

**User Interface Requirements**:  
Aside from login services, we have specified a few of the main features throughout this writing. Some of the main UI requirements include: add a stock or cryptocurrency to the watchlist, manually enter or import past trades across from different exchanges, check portfolio value and compare/view past performance, interact with real-time pricing charts, and viewing/posting in the discussion forum. There are also other requirements such as aggregating data and translating it into visual charts and graphs and analyzing .csv spreadsheets that will contain the user’s trading information from other exchanges.
