/*
    CoasterCounts Sample Commands
*/

/** Add a Rider with the name of AF and birthdate of 03/08/1983 **/
EXECUTE AddRider @RiderName = 'AF', @RiderBirthdate = '1983-03-08';


/** Get a list of all of the Coasters ridden by the Rider with a RiderID of 1 **/
EXECUTE ReadCoasterCount @RiderID = 1;


/** Update the status of the Coaster with a CoasterID of 14 to 'Removed' **/
EXECUTE UpdateCoasterStatus @CoasterID = 14;


/** Delete the Coaster with a CoasterID of 1 from the Coaster Count of the Rider with a RiderID of 1 **/
EXECUTE DeleteCoasterFromCount @RiderID = 1, @CoasterID = 1;