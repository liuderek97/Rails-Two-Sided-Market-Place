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

# Two Way Marketplace Ideas/Feasibility Assessment

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

## Project Plan and Timeline
### Nuclino
  In order to establish an agile methodolgy and establish a git workflow that all team members adhere to  a nuclino workspace was created. The nuclino workspace detailed what agile methodolgy was and described the sprint planning sessions that would take place at the beginnig of each day when the team was face to face. The Nuclino board also went into details about daily standups, presenting and showcasing features and the git workflow that would be used during the project duration.
  
### Nuclino Workspace Screenshots
<img src="images/Nuclino Screenshot1.png" >
<img src="images/Nuclino Screenshot2.png" >


### DAY 1 Schedule

- Create Trello board and add all members to trello board
- Create Github repository
- Create Nuclino board detailing git flow and agile methodology
- Commence documentation

  
## Trello Screenshots

<img src="images/Screen Shot 2019-07-22 at 9.51.51 pm.png" >
