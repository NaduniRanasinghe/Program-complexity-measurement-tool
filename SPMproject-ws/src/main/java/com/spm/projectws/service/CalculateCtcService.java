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
public class CalculateCtcService {
		
	//to calculate the conditional control structures such as if conditions,&&,||,& and |
	public int calculateCondionationalCS(String value) {
		String que1 = value;
		String[] alphabets = que1.split("");
		for(String alphabet : alphabets)
		{
		    System.out.print(alphabet);
		}
		int countIf = 0,countAndAnd = 0,countOrOr =0,countAnd =0,countOr =0;
		try {
			

			for(int i=0;i<alphabets.length;i++) {
				//If there is a comment then ignore the remaining part of the line
				if(que1.charAt(i) =='/' && que1.charAt(i+1)=='/') {
					
					break;
				}
				//to calculate the number of if statements in the code
				if(que1.charAt(i) =='i' && que1.charAt(i+1)=='f') {	
					countIf++;
				}
				//to calculate the number of && in the code
				else if(que1.charAt(i) =='&' && que1.charAt(i+1) == '&') {
					countAndAnd++;
				}
				//to calculate the number of || in the code
				else if(que1.charAt(i) =='|' && que1.charAt(i+1) == '|') {
					
					countOrOr++;
				}
				//to calculate the number of & in the code
				else if(que1.charAt(i) == '&')  {
					
					if(que1.charAt(i) !='&' && que1.charAt(i+1) != '&') {
						countAnd++;
					}
				}
				//to calculate the number of | in the code.
				else if(que1.charAt(i) == '|' && que1.charAt(i+1) != '|') {
					
					if(que1.charAt(i) !='|' && que1.charAt(i+1) != '|') {
						
						countOr++;
					}
				}
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return countIf+countAnd+countOrOr+countAnd+countOr;
		
	}
	
	//to calculate the iterative control structures like for while or do-while
	public int calculateIteraticeCs(String value) {
		
		String que1 = value;
		String[] alphabets = que1.split("");
		int countFor=0,countWhile =0,countDoWhile=0;
	   	try {
			for(int i=0;i<alphabets.length;i++) {
				
				//If there is a comment then ignore the remaining part of the line
				if(que1.charAt(i) =='/' && que1.charAt(i+1)=='/') {
					break;
				}
				//to calculate the number of For iterative loops in the code
				else if(que1.charAt(i) =='f' && que1.charAt(i+1)=='o' && que1.charAt(i+2) =='r' && que1.charAt(i+3)=='(') {	
					countFor= countFor+2;
				}
				
				//to calculate the number of For iterative loops in the code with space between the for and (
				else if(que1.charAt(i) =='f' && que1.charAt(i+1)=='o' && que1.charAt(i+2) =='r' && que1.charAt(i+3)==' ' && que1.charAt(i+4)=='(') {	
					countFor= countFor+2;
				}
				//to calculate the number of while iterative loops in the code
				else if(que1.charAt(i) =='w' && que1.charAt(i+1)=='h' && que1.charAt(i+2) =='i' && que1.charAt(i+3)=='l' && que1.charAt(i+4) =='e' && que1.charAt(i+5)=='(') {	
					countWhile= countWhile+2;
				}
				//to calculate the number of catch statements in the code
				else if(que1.charAt(i) =='c' && que1.charAt(i+1)=='a' && que1.charAt(i+2) =='t' && que1.charAt(i+3)=='c' && que1.charAt(i+4) =='h' && que1.charAt(i+5)=='(') {	
					countWhile= countWhile+2;
				}
			}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		return countFor+countWhile;
	}
	
	
	//to calculate the number of switch statements with n number of cases
	public int calculateProgramStatements(String value) {
		String que1 = value;
		String[] alphabets = que1.split("");
		int countCatch=0,countCases =0;
		
	   	try {
			for(int i=0;i<alphabets.length;i++) {
				
				//If there is a comment then ignore the remaining part of the line
				if(que1.charAt(i) =='/' && que1.charAt(i+1)=='/') {
					break;
				}
				//to calculate the number of catch statements in the line of code
				else if(que1.charAt(i) =='c' && que1.charAt(i+1)=='a' && que1.charAt(i+2) =='t' && que1.charAt(i+3)=='c' && que1.charAt(i+4)=='h' && que1.charAt(i+5)=='(') {	
					countCatch++;
				}
				//to calculate the number of switch statements with the cases in the code
				else if(que1.charAt(i) =='c' && que1.charAt(i+1)=='a' && que1.charAt(i+2) =='s' && que1.charAt(i+3)=='e') {	
					countCases++;
				}
				
				
			}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	   	
		return countCatch+countCases;
			
	}
	
}