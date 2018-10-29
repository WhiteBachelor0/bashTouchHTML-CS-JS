#!/bin/bash

#make folder
echo 'Make folder...'
adress=$1;
newFolderName=$2;
cd;
cd $adress;
pwd;
mkdir $newFolderName;
ls | grep $newFolderName;
cd $newFolderName;

#make html
echo 'Make HTML...'
touch index.html;
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/styles.css">
    <title>'$newFolderName'</title>
</head>
<body>
    
    <script src="js/script.js"></script>
</body>
</html>' > index.html;
echo 'HTML complete!';
echo '';

#make css & js
echo 'make other folders...'
mkdir css js;
touch css/styles.css js/script.js;
echo 'Complete!';
echo '';

#make css
echo 'Make CSS'
cd css;
echo '*{padding: 0;
margin: 0;
}'> styles.css;
echo 'CSS complete!';
echo '';

#make js
echo 'Make JavaScript & ESLint'
cd ..;
cd js;
touch .eslintrc;
echo '{
    "extends": "airbnb/base",
    "env": {
        "browser": true,
        "node": true
    }  
}' > .eslintrc;
echo 'JavaScript complete!';
echo 'All processes compete! Begin your work!'
echo '';
