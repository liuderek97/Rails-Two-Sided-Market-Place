# Rails-Two-Sided-Market-Place

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version
- System dependencies
- Configuration
- Database creation
- Database initialization
- How to run the test suite
- Services (job queues, cache servers, search engines, etc.)
- Deployment instructions
- ...

# Two Way Marketplace Ideas/SWOT Analysis

## Bike/Scooter Rental

Scooter rental system that allows users to rent scooters and bikes in close proximity with them. User will be able to login into their account and use their current location in order to list out all the bikes/scooters that are vaccant and within close proximity to the user.

#### FEATURES:

- Users will be able to login to the app and input their current location. 
- After logging in an putting in their current location users will then be able to view the bikes in their area that are within close proximity to themselves.
- Users can then choose which bike they would like to hire and the app will show them the route to their chosen bike and reserve the bike for the user.
- Upon reaching the bike users can then pay for the bike and user it for duration of the allocated hire time
- After using a certain bike users will be able to leave a review on a certain bike to inform other users about the condition of the bike and whether or not the bike should be avoided by other users. Users will be able to report a bike if it has been damaged to allow for the company to repair the bike.

#### STRENGTHS:

- Interesting google maps api integration ideas 
- Interesting topic for a two sided marketplace.

#### WEAKNESSES:

- Hard to make seem realistic /due to theft and improper application use.
- Difficulty implementing google maps API to locate all bikes available to the users.

#### OPPORTUNITIES:

- Expand into a market in which there are very little competition. 

#### THREATS:

- Difficult to expand into a market which has very little room for new establishments
- Risk of people getting robbed when collecting bike/scooter
- Risk of application pointing user to a damaged bike/scooter 

## Bartender Hire 

Allow people to hire bartenders for private functions. Bartenders will be able to advertise themselves, Consumers will post a job including details  (price TBD). The Job will be listed on the main page and bartenders will be able to leave comments on the job making offers on their services.  The consumer who posted the job will then be able to choose from the list of bartenders who have offered their services.

#### FEATURES

- Users will be able to login into an account and list a job that they want to be done.
- Users who are bartenders will be able to view the jobs posted by normal non bartender user and comment on the job offering their services, bidding to win the job.
- Users will be able to view the bartenders who have bided for the job and will be able to choose the bartender that they like.
- After the job has been completed users will be able to review the bartender that they employed.
- Bartenders will be able to create an account and list all the skills they have 
- Users will be able to view a bartenders profile and direct message them offering them jobs for various events



#### STRENGTHS:

- Clear distinction between buyer and seller or provider and recepient of services.
- Building off of concepts and features covered in class
- Relatively simple and achievable in the time givern

#### WEAKNESSES:

- Ethical issues in relation to payment. Hard to justify when the payment will take place
- Private messaging system with the teams current skillset and rails knowledge is still foreign and will require further research in order to implement effectively

#### OPPORTUNITIES:

- There is a number off people looking to hire bartenders but at the time of making this app there is no platform available to list and offer jobs to bartenders; with the closest idea being a Facebook group/page called the Sydney Bartender Exchange in which Facebook users can list jobs and availabilities for bartneders

#### THREATS:

- If a larger company were to expand into the market being targeted by this site, they would easily be able to overtake the smaller site being produced by the team, as they have a wider reach and are able to establish a foothold in the market with greate ease.
- There are already similar apps that offer users to list jobs and services and allow users to perfrom jobs and services for other people, such as Airtasker, Fiverr, and TaskRabbit. Although these services aren't specifically for barntenders and people requiring bartending services, users would still be able to utilise these applications in order to list the jobs that could be listed on the Bartending site

## Dog Walker

Users will be able to list dog walking jobs. Walkers will be able to list themselves in their own respective area. Users will be presented with a list of dog walkers within close proximity to themselves. Users will be able to book dog walkers to walk their dog and allocate how long they want their dog to be walked for, or any activities that they'd like their dog to participate in with the walker.

#### FEATURES:

- Users will be able to create an account and login to their respective account. After creating an account and logging users will be able to input their location and gain insight on all the different dog-walkers in the area.
- Users will be able to book appointments with different dog-walkers allowing them to get their dogs walked.
- When the dog-walker picks up the users pet, the user will be able to see the route the walker is taking and be able to track their dog during their walk.
- Users will also be able to leave a review about the walker that they employed 

#### STRENGTHS:

- Clear distinction between buyer and seller allows for easier design of marketplace
- Marketplace idea builds off of concepts and features covered in class
- Team members are intrigued by implementing google maps into the site to allow for pet tracking and proximity search

#### WEAKNESSES

- Team members will be required to learn how to implement google maps into the site; this could be a time consuming process
- Google map proximity search may be difficult and may not yield any results to use in the demonstration

#### OPPORTUNITIES

- A small market exists with few competition that focuses solely on dog-walking. Able to break into the market and establish a monopoly

#### THREATS

- Like the bartending idea there already exists applications and sites which allow for the listing of jobs like this. Although these services aren't specifically for dog-walking and people requiring dog-walking services, users would still be able to utilise these applications in order to list the jobs that could be listed on the Dog-walking site



# Project Plan

### Nuclino
In order to establish an agile methodolgy and establish a git workflow that all team members adhere to  a nuclino workspace was created. The nuclino workspace detailed what agile methodolgy was and described the sprint planning sessions that would take place at the beginnig of each day when the team was face to face. The Nuclino board also went into details about daily standups, presenting and showcasing features and the git workflow that would be used during the project duration.

### Nuclino Workspace Screenshots
<img src="images/Nuclino Screenshot1.png" >

<img src="images/Nuclino Screenshot2.png" >



## User Stories

* **As a bartender, I want to create an account, so that I can find paid contracting work.**

* **As a bartender, I want to show my personality through my profile details, so that I can get suitable work.**

* **As a bartender, I want to be able to show my portfolio, by adding previous work experience, skills that I’ve acquired, and certifications.**

* **As a bartender, I want to be able to expand my portfolio, by getting short term work from real businesses and private employers.**

* **As an Event planner, I want to create an account, so that I can create an advertisement to find an exceptional Bartender for my event.**

* **As a business in need of extra staff for a big event, I want the ability to hire bartenders in the area.**

* **As a business I want the ability to view and employ bartenders,  based on their reliability, capability, and skillset.**

* **As a business I want to leave a review on the bartenders that I have employed, recommending or warning other potential employers.**



## Use Case

### **Use case name:** Sign in

**Actors:** Registered but not signed in userUser Sign In system

**Triggers:** User selects Sign Up button

**Preconditions:** User is registered and is attempting to Sign In

**Post-conditions:** User is signed inUser can either hire or find bartender work

### Use case name: Create Post

**Actors:** Registered, signed in User.Post Creation Form

**Triggers:** Signed in User selects a button looking to create a job listing.

**Preconditions:** User is signed inUser decides to create a job listing

**Post-conditions**: Post can be commented on with offers OP can select an offer and/or interact with offer’s Author.Post can be editedPost is shown in the listings section/page

### Use case name: Create Offer

**Actors:** Registered, signed in User, who is posting a listing.Registered, signed in User, who is making an offer on a listing.Offer creation form.

**Triggers:** User who wishes to create an offer on a job listing.

**Preconditions:** Job listing was postedJob listing hasn’t yet been fullfilled

**Post-conditions** Offer is made on job listingOffer is either left, declined, or accepted by employer.Offer can be deleted, or updated.

# Design Process

In order to come up with a design scheme for the site the following resources were used:

* Pinterest
* Khroma color picker
* Google Fonts
* Trello
* Sketch
* Slack
* GitHub

## Pinterest

Pinterest is an social media application that allows users to upload and view images, as well as create a collection of images called "Pinterest Boards". Pinterest was employed to create a moodboard in order to gain inspiration for a web layout theme, as well as colour theme. A moodboard was created and a number of thematically similar websites were added to the moodboard to help narrow down the design scheme. The theme that was decided upon was a simplistic and clean theme with cool light colours.

<b> Moodboard Link: </b> https://pin.it/pueppn6udwyluk

<img src="images/Pinterest Moodboard1.png">

<img src="images/Pinterest Moodboard2.png">

## Khroma

Khroma is an online color pallete picker that allows for users to view a number of color palletes and gradients based on the user color preferences. Khroma was the main color picking pallete tool that was utilised in the design process, in order to come up with an aesthetic color scheme that fitted the desired theme. After using Khroma the following colours were selected to be used in the website:

<img src="images/Khroma1.png">

<img src="images/Khroma2.png">





### Trello Board and Schedule

### Day 1 Schedule

- Create Trello board and add all members to trello board
- Create Github repository
- Create Nuclino board detailing git flow and agile methodology
- Commence documentation



### Trello Board Day 1

<img src="/Users/derekliu/Desktop/Rails-Assignment1/images/Screen%20Shot%202019-07-22%20at%209.51.51%20pm.png" >



### Day 2 Schedule

- Design ERD and plan models and associations
- Create user stories and use cases
- Create flow diagram
- Update README
- Implement required gems to start project

### Trello Board Day 2

<img src="images/Trello Screenshot2.png">



## Sketch

Sketch is a wireframing tool that was employed during the plannnig stages of the project in order to create rough and schematic layout of how the website would look. Several wireframes were created using sketch and the wireframes created were representative of how the site would look. Wireframes were created for different devices such as desktop mobile and different mobile phone models. Sketch and the creation of wireframes was imperative to the design process as it provided a scheme to follow and a reference point for the styling of the site on different devices. After the creation of the wireframes for all devices the development of the site was then commenced.

### Mobile Wireframe

<img src="images/Mobile Wireframe.png">



### Desktop Wireframes

<img src="images/Desktop Wireframe-1.png">



<img src="images/Desktop Wireframe 2.png">



<img src="images/Desktop Wireframe 3.png">



<img src="images/Desktop Wireframe 4.png">



### Slack

Slack was the main communication platform employed by all members when discussing the project outside of contact hours. Slack was the chosen platform for communication as all users were familiar with the platform. Using a communication platform that all users were comfortable with would allow for unhindered communication channels, and allow effective and efficient communication. Slack played a pivotal role in the completion of the project as it allowed for all team members to communicate outside of contact hours, and allowed for members to raise any issues they had found in the sites code or tp notify team mates of a pull request that needed to be reviewed. Slack was also used to share any necessary files that were used in the project.

<img src="images/Slack1.png">

<img src="images/Slack2.png">

<img src="images/Slack3.png">



### GitHub

Github was the chosen platform for application version control. Github was chosen due to the fact that it would allow for the code to be available on multiple devices. Any changes made to the code would be documented during the committing stage. This allowed anyone working on the project to constantly be aware of any major changes to the code and keep up to date with the latest revisions of the project. In order to ensure there were no breakdowns cause by the merging of new code into the etablished code base a git work flow was established at the beginning of the project, and each team member would adhere closely to the git work flow. The GitHub repository was setup with a master branch where the final product would be pushed after rigorous testing and ensuring that the site is working as intended with no bugs. A staging branch which was the main branch where testing would take place before pushiung the final product to master, and individual branches created by each team member when adding a feature of fixing an issue. Whenever a team member would want to work on the project, they would pull from the staging branch and checkout into a new branch with the branch name describing the function they were adding, or the issue that they would be resolving. Upon completion of their individual task the team member would then push their code to GitHub on their individual branch and create a pull request on GitHub to merge the feature branch into the staging branch. Each time a pull request would be created the team member repsonsible for the creation of the branch would be required to request reviewers by the other team members to ensure that all team members were kept up to date with new features and to ensure working and quality code was being merged into the testing/staging branch.



<img src="images/GitHub Screenshot.png">



<img src="images/GitHub 2.png">