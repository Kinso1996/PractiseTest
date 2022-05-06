//Link to video
https://drive.google.com/file/d/1gJ3sYAq_HDfIVTO138cliBu3sDm7aLqJ/view?usp=sharing

//Street Creation

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "ID": 0, \ 
   "Name": "STREET 3", \ 
   "AreaID": 0, \ 
   "AreaName": "HARARE" \ 
 }' 'http://localhost:61494/api/Street/CreateStreet'


//Street Retrival

curl -X POST --header 'Accept: application/json' 'http://localhost:61494/api/Street/RetrieveStreets?AreaName=HARARE%201'