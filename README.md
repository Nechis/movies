# Movies App
Application that show popular, top ranked and upcoming movies.

## Tech 

MVVM
SwiftUI
Alamofire
RXSwift
Realm

## Architecture

Based in the MVVM architecture, I have created four groups of files, Views, Models, ViewModels, Services.
**Views:** I used SwiftUI to generate the visual elements and I placed those in the __Views__ group: 
*MainView*, contains a tabview with the 3 categories of movies, where each category is a *ContentView*
*ContentView*, containt a list of *MovieItemView*.
*MovieItemView*, shows a short description of a movie in a list.
*MovieDetailView*, shows the complete despcription of a movie.
*URLImage* and *ImageLoader*, is the tool create to load images from a url.

**Models** In this group I hold application data. They’re structs and simple classes, these are abstractions of the real things into the app..
*Movie*, represents the movie element that the view needs.
*MovieDBResponse*, represents the movie element returned by the remote api.

**ViewModel**
I added a *MovieViewModel* class that has the responsibility to provide the information to the view, in this case, the popular movie list, the top ranked movie list and the upcoming movie list,  

**Services**
I added a *MovieServices* class that request the information from moviedbapi and transform that into a values that can be displayed on the view.

## Single responsability principle
This is the first principle of the **S**OLID principiles. It means that every module or class should have one responsability, and with this we obtain a clearer and more maintainable code.

## Clean code
In general *clean code* is about the use of good practices.
- Give a good names to variables, classes or methods to help to developers to understand the function of each.
- Keep the clases and methods short, the code will be easer to read.
- Some good practices help to improve the performance, and reduce boilerplate code.
