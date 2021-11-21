nameWorkspace("/main/wsp_friendHouse").
nameArtifact("electronicMachine").
 
nameInstitutionalWorkspace("/main/bh_friendHouse").
nameInstitutionalArtifact("bh_friendHouse_art").
nameInstitutionalSpecification("src/org/sai_specifications/constitutive-friendHouse-book.sai").

+!setup_scenario
	<- !prepareScenario;
	   !setup_sai;
	  // !do_inc;
	   .
/*  
+!do_inc
	<- .wait(5000);
       inc;      
       !do_inc.
*/
 
 +!prepareScenario : nameWorkspace(NW) & nameArtifact(NA) & 
 					nameInstitutionalWorkspace (NIW) & nameInstitutionalArtifact(NIA)
 	<- createWorkspace(NW);
       // criar o artefato
       joinWorkspace(NW, WspBookStore); // enter in the wsp_libray and get a ID "WspLibrary"
       makeArtifact(NA, "tools.ElectronicMachine")[wid(WspBookStore)];
 	   lookupArtifact(NA, ElectronicMachineArt); // diferentes lugares pode ter diferentes artefatos.
       focus(ElectronicMachineArt);
 	   .

  	   
+!setup_sai : nameWorkspace(NW) & nameInstitutionalSpecification(NIS)
   <- 
   	  .wait(1000);
   	  makeArtifact(i1,sai.bridges.jacamo.ConstitutiveArt,[ "i1",NIS], InstArt); //launch institution
      focus(InstArt);
      getRuleEngine(RE)[artifact_id(InstArt)]; //gets the reference RE for instutional rule engine (responsible for handling the environmental state) 
      joinWorkspace(NW,W1); 
      setWSPRuleEngine(RE)[artifact_id(W1)];
      .
 

 
 
 /*
 +!prepareScenario : nameWorkspace(NW) & nameArtifact(NA) & 
 					nameInstitutionalWorkspace (NIW) & nameInstitutionalArtifact(NIA)
 	<- 
 	println("*** Execution Phase ***");
    println;
    
    // criar workspace
    createWorkspace(NW);
    // criar o artefato
    joinWorkspace(NW, WspBookStore); // enter in the wsp_libray and get a ID "WspLibrary"
    makeArtifact("electronicMachine", "tools.ElectronicMachine")[wid(WspBookStore)]; 
    
    lookupArtifact(NA, ElectronicMachineArt); // diferentes lugares pode ter diferentes artefatos.
    focus(ElectronicMachineArt);

    // Enter in an institution
//	joinWorkspace(NIW,_);
//    lookupArtifact(NIA, InstArt);
//    focus(InstArt);
//    getRuleEngine(RE)[artifact_id(InstArt)];
//
//	joinWorkspace(NW, WspBookStore2);
//	setWSPRuleEngine(RE)[artifact_id(WspBookStore2)]; //links the woskspace "wsp_house" to SAI. Thus, the SAI engine is fed with the environmental facts from that workspace
	
	makeArtifact(i1,sai.bridges.jacamo.ConstitutiveArt,["bh_bookStore","src/org/constitutive-bookStore-book.sai"], InstArt); //launch institution
    getRuleEngine(RE)[artifact_id(InstArt)]; //gets the reference RE for instutional rule engine (responsible for handling the environmental state) 
    joinWorkspace(NW,W1); 
    setWSPRuleEngine(RE)[artifact_id(W1)];
	.
 */
