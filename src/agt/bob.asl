//{ include("common.asl") }

scenario(bookStore).
action(bookStore, pay).
consequenceAction(bookStore, pay, holdBook).
expectedConsequence(holdBook). 
 
//scenario(library). 
action(library, rent).
consequenceAction(library, rent, holdBook).


//scenario(hostel). 
action(hostel, replace).
consequenceAction(hostel, replace, holdBook).

//scenario(friendHouse). 
action(friendHouse, donation).
consequenceAction(friendHouse, donation, holdBook).
 
 
!holdBook.

+! holdBook : scenario(Scenario) & Scenario == bookStore  // (1) Verifica se está no cenário certo.
	<-
		println("*** Execution Phase -- BookStore ***");
      	println;
		joinWorkspace("/main/wsp_bookStore", WspBookStore); // enter in the wsp_libray and get a ID "WspLibrary"
      	//makeArtifact("electronicMachine", "tools.ElectronicMachine")[wid(WspLibrary)]; criei no jcm
      	lookupArtifact("electronicMachine", ElectronicMachineArt);
      	focus(ElectronicMachineArt);
      	
      	// Enter in an institution
		joinWorkspace("/main/bh_bookStore",_);
      	lookupArtifact("bh_bookStore_art", InstArt);
      	focus(InstArt);
      	getRuleEngine(RE)[artifact_id(InstArt)];
		
		joinWorkspace("/main/wsp_bookStore", WspBookStore2);
		setWSPRuleEngine(RE)[artifact_id(WspBookStore2)]; //links the woskspace "wsp_house" to SAI. Thus, the SAI engine is fed with the environmental facts from that workspace
      	
      	println("Scenario: " , Scenario);  
      	?action(Scenario, Action); // (2) precisa checar qual ação precisa executar nesse necessário
      	println("Institutional Action: ", Action);
      	
  
      	?constitutive_rule(ConcreteAction,Action,_,_); // (3) Precisa checar qual ação concreta é interpretada como
      	println("Concrete Action: ", ConcreteAction);
      	?consequenceAction(Scenario, Action, Consequence); // (4) Precisa checar qual é a consequencia da ação
      	println("Action consequency: ", Consequence);
      	
      	if(expectedConsequence(EC) & Consequence == EC){ // (5) precisa checar se a consequencia da ação é a mesma esperada por ele
      		ConcreteAction; // finalmente executar a ação.
      	}
      	println;
      	println("*** Final Phase ***");
		.


+!holdBook : scenario(Scenario) & Scenario == library 
	<- 	println("*** Execution Phase -- Library ***");
      	println;
		joinWorkspace("/main/wsp_library",_); // enter in the wsp_libray and get a ID "WspLibrary"
      	//makeArtifact("electronicMachine", "tools.ElectronicMachine")[wid(WspLibrary)]; criei no jcm
      	lookupArtifact("electronicMachine", ElectronicMachineArt);
      	focus(ElectronicMachineArt);
      	
      	// Enter in an institution
		joinWorkspace("/main/bh_library",_);
      	lookupArtifact("bh_library_art", InstArt);
      	focus(InstArt);
      	getRuleEngine(RE)[artifact_id(InstArt)];
		
		joinWorkspace("/main/wsp_library", WspLibrary2);
		setWSPRuleEngine(RE)[artifact_id(WspLibrary2)]; //links the woskspace "wsp_house" to SAI. Thus, the SAI engine is fed with the environmental facts from that workspace
      	
      	println("Scenario: " , Scenario);  
      	?action(Scenario, Action); // (2) precisa checar qual ação precisa executar nesse necessário
      	println("Institutional Action: ", Action);
      	
  
      	?constitutive_rule(ConcreteAction,Action,_,_); // (3) Precisa checar qual ação concreta é interpretada como
      	println("Concrete Action: ", ConcreteAction);
      	?consequenceAction(Scenario, Action, Consequence); // (4) Precisa checar qual é a consequencia da ação
      	println("Action consequency: ", Consequence);
      	
      	if(expectedConsequence(EC) & Consequence == EC){ // (5) precisa checar se a consequencia da ação é a mesma esperada por ele
      		ConcreteAction; // finalmente executar a ação.
      	}
      	println;
      	println("*** Final Phase ***");
		.


+!holdBook : scenario(Scenario) & Scenario == hostel 
	<- 	println("*** Execution Phase -- Hostel ***");
      	println;
		joinWorkspace("/main/wsp_hostel",_); // enter in the wsp_libray and get a ID "WspLibrary"
      	//makeArtifact("electronicMachine", "tools.ElectronicMachine")[wid(WspLibrary)]; criei no jcm
      	lookupArtifact("electronicMachine", ElectronicMachineArt);
      	focus(ElectronicMachineArt);
      	
      	// Enter in an institution
		joinWorkspace("/main/bh_hostel",_);
      	lookupArtifact("bh_hostel_art", InstArt);
      	focus(InstArt);
      	getRuleEngine(RE)[artifact_id(InstArt)];
		
		joinWorkspace("/main/wsp_hostel", WspHostel2);
		setWSPRuleEngine(RE)[artifact_id(WspHostel2)]; //links the woskspace "wsp_house" to SAI. Thus, the SAI engine is fed with the environmental facts from that workspace
      	
      	println("Scenario: " , Scenario);  
      	?action(Scenario, Action); // (2) precisa checar qual ação precisa executar nesse necessário
      	println("Institutional Action: ", Action);
      	
  
      	?constitutive_rule(ConcreteAction,Action,_,_); // (3) Precisa checar qual ação concreta é interpretada como
      	println("Concrete Action: ", ConcreteAction);
      	?consequenceAction(Scenario, Action, Consequence); // (4) Precisa checar qual é a consequencia da ação
      	println("Action consequency: ", Consequence);
      	
      	if(expectedConsequence(EC) & Consequence == EC){ // (5) precisa checar se a consequencia da ação é a mesma esperada por ele
      		ConcreteAction; // finalmente executar a ação.
      	}
      	println;
      	println("*** Final Phase ***");
		.
		
		
+!holdBook : scenario(Scenario) & Scenario == friendHouse 
	<- 	println("*** Execution Phase -- Friend's House ***");
      	println;
		joinWorkspace("/main/wsp_friendHouse",_); // enter in the wsp_libray and get a ID "WspLibrary"
      	//makeArtifact("electronicMachine", "tools.ElectronicMachine")[wid(WspLibrary)]; criei no jcm
      	lookupArtifact("electronicMachine", ElectronicMachineArt);
      	focus(ElectronicMachineArt);
      	
      	// Enter in an institution
		joinWorkspace("/main/bh_friendHouse",_);
      	lookupArtifact("bh_friendHouse_art", InstArt);
      	focus(InstArt);
      	getRuleEngine(RE)[artifact_id(InstArt)];
		
		joinWorkspace("/main/wsp_friendHouse", WspFriendHouse2);
		setWSPRuleEngine(RE)[artifact_id(WspFriendHouse2)]; //links the woskspace "wsp_house" to SAI. Thus, the SAI engine is fed with the environmental facts from that workspace
      	
      	println("Scenario: " , Scenario);  
      	?action(Scenario, Action); // (2) precisa checar qual ação precisa executar nesse necessário
      	println("Institutional Action: ", Action);
      	
  
      	?constitutive_rule(ConcreteAction,Action,_,_); // (3) Precisa checar qual ação concreta é interpretada como
      	println("Concrete Action: ", ConcreteAction);
      	?consequenceAction(Scenario, Action, Consequence); // (4) Precisa checar qual é a consequencia da ação
      	println("Action consequency: ", Consequence);
      	
      	if(expectedConsequence(EC) & Consequence == EC){ // (5) precisa checar se a consequencia da ação é a mesma esperada por ele
      		ConcreteAction; // finalmente executar a ação.
      	}
      	println;
      	println("*** Final Phase ***");
		.


{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
