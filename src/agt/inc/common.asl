nameWorkspace("/main/wsp_friendHouse").
nameArtifact("electronicMachine").
 
nameInstitutionalWorkspace("/main/bh_friendHouse").
nameInstitutionalArtifact("bh_friendHouse_art").
 
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
	joinWorkspace(NIW,_);
    lookupArtifact(NIA, InstArt);
    focus(InstArt);
    getRuleEngine(RE)[artifact_id(InstArt)];

	joinWorkspace(NW, WspBookStore2);
	setWSPRuleEngine(RE)[artifact_id(WspBookStore2)]; //links the woskspace "wsp_house" to SAI. Thus, the SAI engine is fed with the environmental facts from that workspace
	.

