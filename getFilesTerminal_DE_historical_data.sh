echo 'opening connection'

#host and log in credentials for iqblade at credit safe 
HOST='mft.creditsafe.com'
USER=' s536916'
PASS='632sj2mFKWUw5Pqb'

#Current Date
MONTH=$(date -d "$D" '+%m')
YEAR=$(date -d "$D" '+%Y')

#sshpass is an external system and will need to be downloaded to work corectly
#it is used to pass the passwored to the comand line 

#the get comand is broken up in to three part request | location file path | destination file path


sshpass -p $PASS sftp -oHostKeyAlgorithms=+ssh-dss $USER@$HOST << EOF


get DE_historical_data.dsv /home/leonidas/DataSets

echo 'file download complete' 

 
EOF

