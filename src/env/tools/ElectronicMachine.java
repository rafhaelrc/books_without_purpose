package tools;

import cartago.Artifact;
import cartago.OPERATION;



public class ElectronicMachine extends Artifact{
	
	
	@OPERATION
	public void init() {
		defineObsProperty("task", 0);
	}
	
	
	@OPERATION
	public void transfer() {
		defineObsProperty("state", "holdBook");
		System.out.println("Apenas testando...  transferBook");
	}
	
	@OPERATION
	public void signLoan() {
		defineObsProperty("state", "holdBook");
		System.out.println("Apenas testando...  signLoan");
	}
	
	
	@OPERATION
	public void receiveAnything() {
		defineObsProperty("state", "holdBook");
		System.out.println("Apenas testando...  receiveAnything");
	}
	
	@OPERATION
	public void putBookOnShelf() {
		defineObsProperty("state", "holdBook");
		System.out.println("Apenas testando...  putBookOnShelf");
	}
}
