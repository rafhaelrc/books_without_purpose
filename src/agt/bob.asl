{ include("common.asl") }

expectedConsequence(holdBook).
//scenario_action_consequence(bookStore,pay,holdBook).

//scenario_action_consequence(library,rent,holdBook).

//scenario_action_consequence(hostel,replace,holdBook).

scenario_action_consequence(friendHouse,donation,holdBook).


!setup_scenario.
!holdBook.

+! holdBook
	<-
	  .wait(5000);
	  ?scenario_action_consequence(Scenario, InstitutionalAction, Consequence);
      println("Scenario: " , Scenario);
      println("Institutional Action: ", InstitutionalAction);

	  ?constitutive_rule(ConcreteAction, InstitutionalAction,_,_);
	  println("Concrete Action: ", ConcreteAction);
      println("Action consequency: ", Consequence);

      if(expectedConsequence(EC) & Consequence == EC){
		  ConcreteAction;
      }
      println;
      println("*** Final Phase ***");
	  .
 


{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
