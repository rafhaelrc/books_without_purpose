// common Goal of the all agents.

//!in_bh_institution.

// plan for join in the institution.
+!in_bh_institution 
	<-	println("setting the institution");
  		joinWorkspace("/main/bh",_);
      	lookupArtifact("bh_art", InstArt);
      	focus(InstArt);
      	getRuleEngine(RE)[artifact_id(InstArt)];				
  		.

