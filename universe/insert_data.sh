#!/bin/bash
echo -e "\nHello Anjan, ready to run your automation!\n"

PSQL="psql -X --username=freecodecamp --dbname=universe --no-align --tuples-only -c"

cat planet_data.csv | while IFS="," read planet moon star galaxy other_moon
do 
    if [[ $planet != 'Planet' ]]
    then 
      # insert the moon and other moon first 
      # echo $moon, $other_moon

      # first get moon_id 
      MOON_ID=$($PSQL "SELECT moon_id FROM moon WHERE name='$moon';")

      # if moon_id does not exist!
      if [[ -z $MOON_ID ]]
      then 
        INSERT_MOON_RESULT=$($PSQL "INSERT INTO moon(name,other_moon) VALUES('$moon','$other_moon')")
        echo $INSERT_MOON_RESULT
      fi
      # get the mooon id to insert into planet id's moon id!
      MOON_ID=$($PSQL "SELECT moon_id FROM moon WHERE name='$moon';")
      # echo $MOON_ID
    fi
    # CHECK FOR PLANT!
    # first get moon_id 
      PLANET_ID=$($PSQL "SELECT planet_id FROM planet WHERE name='$planet';")

      # if does not exist!
      if [[ -z $PLANET_ID ]]
      then 
        INSERT_PLANET_RESULT=$($PSQL "INSERT INTO planet(name,moon_id) VALUES('$planet',$MOON_ID)")
      fi
      # get the mooon id to insert into planet id's moon id!
      PLANET_ID=$($PSQL "SELECT planet_id FROM planet WHERE name='$planet';")
      # echo $PLANET_ID
    # Planet id_ for star!
      # first get star
      STAR_ID=$($PSQL "SELECT star_id FROM star WHERE name='$star';")

      # if does not exist!
      if [[ -z $STAR_ID ]]
      then 
        INSERT_STAR_RESULT=$($PSQL "INSERT INTO star(name,planet_id) VALUES('$star',$PLANET_ID)")
      fi
      
      STAR_ID=$($PSQL "SELECT star_id FROM star WHERE name='$star';")
      # echo $STAR_ID

# star_id_ for galaxy!
      # first get star
      GALAXY_ID=$($PSQL "SELECT galaxy_id FROM galaxy WHERE name='$galaxy';")

      # if does not exist!
      if [[ -z $GALAXY_ID ]]
      then 
        INSERT_GALAXY_RESULT=$($PSQL "INSERT INTO galaxy(name,star_id) VALUES('$galaxy',$STAR_ID)")
      fi
      
      GALAXY_ID=$($PSQL "SELECT galaxy_id FROM galaxy WHERE name='$galaxy';")
      echo $GALAXY_ID
done