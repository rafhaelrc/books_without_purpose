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
		System.out.println("Apenas testando...  transferBook");
	}
	
	@OPERATION
	public void signLoan() {
		System.out.println("Apenas testando...  signLoan");
	}
	
	
	@OPERATION
	public void receiveAnything() {
		System.out.println("Apenas testando...  receiveAnything");
	}
	
	@OPERATION
	public void putBookOnShelf() {
		System.out.println("Apenas testando...  putBookOnShelf");
	}
	
	
	


}
