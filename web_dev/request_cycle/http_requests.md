**What are some common HTTP status codes?**

1. 404 Not Found -
* The most common error code you run into is a 404 error. The 404 status code means the requested resource is no longer available or, more specifically, just not found.
* Common reasons for a 404 error: Typos or a missing or extra letter in a typed-in url, or a wrong domain name can often result in a 404 error. Another reason for 404 errors could be the aging of the web.

2. 403 Forbidden -
* Getting a 403 status code back from an HTTP request means access to the resource is forbidden.
* One common reason for 403 errors is the server maintaining a whitelist of machines that can access that system and the user’s machine not being on it.
* If the client’s certificate is no longer valid (or is just plain missing), that’s another reason for a 403 error response.
* Sometimes, webserver will not have access to website files because of faulty permissions. This will also result in a 403 error. The server owner will need to change the file permissions to fix this.

3. 500 Internal Server Error
* 500 error is the catchall. When none of the other 500 error codes make sense, or if the programmer is just lazy and doesn’t identify the specific problem, a 500 status code is returned.
* Typically, you can retry the request attempt again and possibly get a different response.

4. 503 Service Unavailable
* 503 (service unavailable) status code could be a temporary problem.
* It basically means the web server isn’t available, may be because the web server just restarted and is in the middle of initialization. Or perhaps it is overloaded and can’t handle any more concurrent requests. Or perhaps it is just down for maintenance.
* Retrying the request could work or could return another 5xx error.

5. 504 Gateway Timeout
* The 504 status, indicates a gateway timeout.
* A proxy server needs to communicate with a secondary web server, such as an apache server, and access to that server timed out.
* There could be a DNS issue, a network device might be down, or the other machine could just be overly busy and unable to process the request in a timely fashion.
* This can only happen in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable.
* As with the other 5xx-level errors, just retrying the request could result in a successful response.

-------------------------------------------------------
** What is the difference between a GET request and a POST request? When might each be used?**

* GET - Requests data from a specified resource
* POST - Submits data to be processed to a specified resource

* Get is used to pull data from the server, where an update action shouldn't be needed. The idea being is that you should be able to use the same GET request over and over and have the same information returned. The URL has the get information in the query string, because it was meant to be able to be easily sent to other systems and people like a address on where to find something.

* Post is supposed to be used (at least by the REST architecture which the web is kinda based on) for pushing information to the server/telling the server to perform an action. Examples like: Update this data, Create this record.

-------------------------------------------------------
**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**

* A cookie (called an Internet or Web cookie) is the term given to describe a type of message that is given to a Web browser by a Web server. The main purpose of a cookie is to identify users and possibly prepare customized Web pages or to save site login information for you.

* When you enter a Web site using cookies, you may be asked to fill out a form providing personal information; like your name, e-mail address, and interests. This information is packaged into a cookie and sent to your Web browser, which then stores the information for later use. The next time you go to the same Web site, your browser will send the cookie to the Web server. The message is sent back to the server each time the browser requests a page from the server.

* A Web server has no memory so the hosted Web site you are visiting transfers a cookie file of the browser on your computer's hard disk so that the Web site can remember who you are and your preferences. This message exchange allows the Web server to use this information to present you with customized Web pages. So, for example, instead of seeing just a generic welcome page you might see a welcome page with your name on it.

-------------------------------------------------------


