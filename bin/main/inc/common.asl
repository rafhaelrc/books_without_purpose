nameWorkspace("/main/wsp_bookStore").
nameArtifact("electronicMachine").
 
nameInstitutionalWorkspace("/main/bh_bookStore").
nameInstitutionalArtifact("bh_bookStore_art").
nameInstitutionalSpecification("src/org/sai_specifications/constitutive-bookStore-book.sai").

+!setup_scenario
	<- !prepareScenario;
	   !setup_sai;
	   .

 
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
   	  makeArtifact(i1,"sai.bridges.jacamo.ConstitutiveArt",["i1",NIS], InstArt); //launch institution
      focus(InstArt);
      getRuleEngine(RE)[artifact_id(InstArt)]; //gets the reference RE for instutional rule engine (responsible for handling the environmental state) 
      joinWorkspace(NW,W1); 
      setWSPRuleEngine(RE)[artifact_id(W1)];
      +setupFinished;
      .
 

