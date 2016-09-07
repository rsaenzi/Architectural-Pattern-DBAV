# MultiGraph Architecture Pattern

### Main Goal
Explore, investigate, design, test and develop an experimental Software Architecture Pattern that I named **MultiGraph**, and make it suitable for any mobile development.

### Motivation
This project was created to serve as a Template Project for my future mobile projects and as Laboratory Test for proposals about new software engineering techniques and use of best programming practices, in order to improve my programming skills and become a Mobile Architect some day...

### Objetives
* Create an iOS project as a Proof-Of-Concept
* Design and implement the MultiGraph Architecture Pattern
* Create a consistent folder structure
* List all controllers that a mobile app could have
* Design a template for Business Rules
* Design an data flow that connects all components
* Generate a Data Model to test the MultiGraph pattern
* Define how to test properly the MultiGraph components

### What is MultiGraph?
Is a pattern optimized for mobile projects, which specifies how to organize a project at diferent stages, making projects more flexible, organized, extendable and testeable. I came with this pattern after using several others, extracting the best of them, dropping things that are not so adecuate for mobile projects and introducing some fresh ideas...

There is a really interesting reading about most known patterns for iOS showing its advantages and drawbacks here:
[iOS Architecture Patterns - Demystifying MVC, MVP, MVVM and VIPER by Bohdan Orlov](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52)

### Why I put that name to this pattern?
Because after analyze how its components can be connected, it looks like a graph, so all its nomenclature are related to Graph Theory

### Components
MultiGraph specifies 4 main mandatory components. For better undestanding, let's suppose that creating a mobile app is like making a dinner...
* **Data Models:** They are all Ingredients we are going to cook. Represents the data to process.
* **Access Controllers:** They are the Cookware needed to process our ingredients. Represents the device capabilities and sensors.
* **Business Rules:** They are the Recipes, specifies how to use the cookware to process the ingredients. Represents the user stories and bussiness logic.
* **View Managers:** They are the Dishes used to show our dinner. Represents the user interface.

### Why this components exists?
Any mobile app has nowadays a lot of capabilities provided by the OS host, ranging from accessing to user information to getting data from all device sensors.

![Access Controllers](https://cloud.githubusercontent.com/assets/2594928/18102670/fcb859aa-6eb8-11e6-9978-545818412cc2.png)

So, it is natural that an app have a way of control the access to those capabilities, a wrapper for each one, that provides a consistent and unified way to use them. In MultiGraph each wrapper is called an **Access Controller**.


A mobile app gets data, most of the time associated to a user, does some processing and sends back the results, most of the time to the screen, using one or many OS capabilities in a specific logical flow:
* Showing the results of a search
* Saving data captured by a form
* Applying a filter to an image
* Validating the content entered in a textbox
* Storing data persistently
* Playing a song
* Recording video

These higher-level algorithms or workflows essentially specifies what happens if a particular task is performed with or without errors and how to handle those errors, for instance, imagine an app that must download and show an image whose URL must be taken from a webservice. A simple workflow is described below:
* Ask the webservice for the image URL, then download asynchronously the image and load it in the image container
* If the image is larger than 256x256px, first scale it to that size
* If the device is not connected to Internet, shows a message dialog that states: "Please check your Internet connection..."
* If the connection to the webservice is not possible, shows a message dialog that states: "Please try again later..."
* If the webservice returns a HTTP 404 error code, redirect the user to the login screen
* If the URL is not valid, shows a message dialog that states: "The image does not exist"

![Business Rules](https://cloud.githubusercontent.com/assets/2594928/18102677/026999c2-6eb9-11e6-96c7-61ce914e4384.png)

So, it is natural that an app have these workflows expressed clearly and not distributed among lots of components/controllers/classes/views. In MultiGraph each graph is called a **Business Rule**.


### Hierarchical Navigation
(Under construction...)

### Life Cycle
(Under construction...)
* **doStart():** ...
* **doInit():** ... [Mise en place]
* **doReset():** ...
* **doPause():** ...
* **doResume():** ...
* **doExit():** ...

### Communication Chart
(Under construction...)

### Software Tools used
* **iOS 9.X** as target operating system  
* **Swift 2** as programming language  
* **XCode** as integrated development environment
* **CocoaPods** as dependency manager for third-party libraries

### Third-Party Libraries used
* Alamofire: https://github.com/Alamofire/Alamofire
* SwiftyJSON: https://github.com/SwiftyJSON/SwiftyJSON
* AEXML: https://github.com/tadija/AEXML
* SWXMLHash: https://github.com/drmohundro/SWXMLHash
* TPKeyboardAvoiding: https://github.com/michaeltyson/TPKeyboardAvoiding

### Licence
This project is available under the [MIT license](http://opensource.org/licenses/mit-license.php).

### Author
**Rigoberto Sáenz Imbacuán**  
www.linkedin.com/in/rsaenzi  
[@rsaenzi](https://github.com/rsaenzi/) at GitHub
