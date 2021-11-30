{ include("common.asl") }

!setup_scenario.
!holdBook.

//^!holdBook[state(pending)]  <- .suspend(holdBook). // suspend b when starting
//^!setup_scenario[state(finished)] <- .resume(holdBook).  // resume b when a finishes


+! holdBook
	<-
	  .wait(setupFinished);
	  .intention(Id,State,Stack,current); // gets the state of the current intention
      //.print("current intention number is ",Id," and its state is ",State);
	  Stack = [Top|_]; // get the intended means in the top of current intention
      Top   = im(Label, { +!Goal },PlanBody,Unifier);
      //.print("current goal is ",Goal," being pursued by plan ",Label);
	  Goal  =.. [NameSpace,Functor,Terms,Annots];
      //.print("its functor is '",Functor,"' and terms are ",Terms);
	
	  ?scenario_action_consequence(Scenario, InstitutionalAction, Consequence);
	  Consequence  =.. [NameSpaceConsequence,FunctorConsequence,TermsConsequence,AnnotsConsequence];

//	  println("Scenario: " , Scenario);
//    println("Institutional Action: ", InstitutionalAction);

	  ?constitutive_rule(ConcreteAction, InstitutionalAction,_,_);
//	  println("Concrete Action: ", ConcreteAction);
//    println("Action consequency: ", Consequence);

	  if(FunctorPlan = FunctorConsequence & Terms = TermsConsequence){
	  	println("*** Performing the action... ***");
	  	ConcreteAction;
	  }
	  ?state("holdBook");
	  println;
      println("*** Final Phase ***");
	  .

//+state("holdBook") <- println("testando").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
