!haveBook.       // Bos's code

+!haveBook
	<- 
	  .intention(Id,State,Stack,current); // gets the state of the current intention
      Stack = [Top|_]; // get the intended means in the top of current intention
      Top   = im(Label, { +!Goal },PlanBody,Unifier);
      isPurposeOfState(Goal, NamePurpose); // gets the purpose related to the agent's goal
      isPurposeOfSF(NamePurpose, NameStatusFunctions); // gets the status-functions related to the purpose
      if(.member(StatusFunctionString,NameStatusFunctions) & 
      	.term2string(StatusFunctionAtom, StatusFunctionString) & 
      	constitutive_rule(ConcreteAction, StatusFunctionAtom,_,_)){
     		ConcreteAction;	
      }.
	
	
	   
  
	



