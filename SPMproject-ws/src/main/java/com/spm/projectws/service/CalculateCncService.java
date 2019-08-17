/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spm.projectws.service;

/**
 *
 * @author Pasan Kamburugamuwa
 */
public class CalculateCncService {
	
	//to calculate the conditional control structures such as if conditions
	public int calculateCondionationalCS(String value) {
		String que1 = value;
		int countIf = 0,countReturn = 0,countFor =0;
		String[] alphabets = que1.split("");
		for(String alphabet : alphabets)
		{
		    System.out.print(alphabet);
		}
		try {
			for(int i=0;i<alphabets.length;i++) {
				//If there is a comment then ignore the remaining part of the line
				if(que1.charAt(i) =='/' && que1.charAt(i+1)=='/') {
					break;
				}
				//to calculate the number of if statements in the code
				else if(que1.charAt(i) =='i' && que1.charAt(i+1)=='f') {
					countIf++;
				}
				//to calculate if there is a return statement in the code
				else if(que1.charAt(i) == 'r' && que1.charAt(i+1) == 'e' && que1.charAt(i+2) == 't' && que1.charAt(i+3) == 'u' && que1.charAt(i+4) == 'r' && que1.charAt(i+5) == 'n') {
					
					countReturn++;
				}
				//to calculate the number of For iterative loops in the code with space between the for and (
				else if(que1.charAt(i) =='f' && que1.charAt(i+1)=='o' && que1.charAt(i+2) =='r' && que1.charAt(i+3)==' ' && que1.charAt(i+4)=='(') {	
					countFor= countFor+2;
				}
				//to calculate the number of For iterative loops in the code
				else if(que1.charAt(i) =='f' && que1.charAt(i+1)=='o' && que1.charAt(i+2) =='r' && que1.charAt(i+3)=='(') {	
					countFor= countFor+1;
				}
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
	   	//printing the relevant number of statements in the code
		System.out.println("if "+countIf);	
		return countIf+countReturn+countFor;
	}
	
	
	

}