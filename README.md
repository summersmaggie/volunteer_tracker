# Volunteer Tracker

#### _By Maggie Summers_

#### _A Sinatra application that allows non-profit employees to enter new projects and new volunteers, as well as add volunteers to projects. 2-27-18_

## Description

_This app allows a user to add, update and delete volunteers and projects to a database. They can then assign projects to volunteers, and volunteers to projects._

### Specifications
    1. Add project to database
      * _Example input - "Call volunteer list"_
      * _Example output - "Projects: Call volunteer list_

    2. Add volunteer to project
      * _Example input - "Name of Volunteer: Maggie"_
      * _Example output - "Here are all the volunteers for this project: Maggie"_

    3. Find info about volunteer     
      * _Example action - click "Maggie"_
      * _Example output - "Volunteer Name: Maggie, Project Job Number Currently Assigned To: 160"_

    4. Allows user to update volunteer
      * _Example input - "Name of Volunteer: Maggie"_
      * _Example output - "Name of Volunteer: Nicole"_

    5. Allows user to update project
      * _Example input - "Project: Call friends"_
      * _Example output - "Project: Call parents"_

## Install the DATABASE instructions

* _Enter into the terminal:_ ``` $postgres```

* _In the following line enter:_ ```$db:create```

* _In the following line enter:_ ```$db:migrate```


## Setup/Installation Requirements

  * _Enter in the terminal:_ ``` $ruby app.rb```

  * _Using a web browser, type in the url_ ``` localhost:4567 ```

## Known Bugs

  * _No known bugs at this time._

## Support and contact details

  _To suggest changes, submit a pull request in the GitHub repository._

## Technologies Used

  * Ruby
  * Sinatra
  * pSQL
  * ActiveRecord

### License

  *MIT License*

Copyright (c) 2018 **_Maggie Summers**
