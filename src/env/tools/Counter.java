// CArtAgO artifact code for project books_without_purpose

package tools;

import cartago.*;

public class Counter extends Artifact {
	
	@OPERATION
	public void init() {
		defineObsProperty("task", 0);
	}
	
	/*void init(int initialValue) {
		defineObsProperty("count", initialValue);
	}*/

	@OPERATION
	void inc() {
		ObsProperty prop = getObsProperty("count");
		prop.updateValue(prop.intValue()+1);
		signal("tick");
	}
}

