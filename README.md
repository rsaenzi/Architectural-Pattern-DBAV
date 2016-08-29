# DBAV Architecture Pattern

![logo](https://cloud.githubusercontent.com/assets/2594928/17424851/689c0efe-5a8d-11e6-9a1c-aaccd3986727.png)

### Main Goal
Explore, investigate, design, test and develop an experimental Software Architecture Pattern that I named **DBAV**, and make it suitable for any mobile development.

### Motivation
This project was created to serve as a Template Project for my future mobile projects and as Laboratory Test for proposals about new software engineering techniques and use of best programming practices, in order to improve my programming skills and become a Mobile Architect some day...

### Objetives
* Create an iOS project as a Proof-Of-Concept
* Design and implement a the DBAV Architecture Pattern
* Create a consistent folder structure
* List all controllers that a mobile app could have
* Design a template for a Business Rules
* Design an data flow that connects all components
* Generate a Data Model to test the DBAV pattern
* Define how to test properly the DBAV components

### What is DBAV?
Is a pattern optimized for mobile projects, which specifies how to organize a project at diferent stages, making projects more flexible, organized, extendable and testeable. I came with this pattern after using several others, extracting the best of them, dropping things that are not so adecuate for mobile projects and introducing some fresh ideas...

There is a really interesting reading about most known patterns for iOS showing its advantages and drawbacks here:
[iOS Architecture Patterns - Demystifying MVC, MVP, MVVM and VIPER by Bohdan Orlov](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52)

### Let´s start
Any mobile app has nowadays a lot of capabilities provided by the host OS, ranging from accessing to user information to getting data from all device sensors

![OS Environment](https://cloud.githubusercontent.com/assets/2594928/18035564/ca9287a8-6d1d-11e6-89c8-15d3d67c504e.png)

A mobile app gets data, most of the time associated to a user, does some processing and sends back the results, continuously, using one or many SO capabilities in a specific logical flow: Showing the results of a search, saving data captured by a form, applying a filter to an image, validating the content entered in a textbox, storing data persistently, playing a song, recording video, all of these are good examples.

So, it is natural that an app have a way of control the access to those capabilities

### Components
DBAV specifies 4 main mandatory components. For better undestanding, let's suppose that a mobile project is like making a dinner...
* **Data Models:** They are all Ingredients we are going to cook. Represents the data to process.
* **Access Controllers:** They are the Cookware needed to process our ingredients. Represents the device capabilities and sensors.
* **Business Rules:** They are the Recipes, specifies how to use the cookware to process the ingredients. Represents the user stories and bussiness logic.
* **View Managers:** They are the Dishes used to show our dinner. Represents the user interface.

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
