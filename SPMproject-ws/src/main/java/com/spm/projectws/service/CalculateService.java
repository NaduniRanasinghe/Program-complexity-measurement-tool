/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spm.projectws.service;

/**
 *
 * @author inushaV
 */
public class CalculateService {
    
//    public int simpleTextSearch(char[] pattern, char[] text) {
//    int patternSize = pattern.length;
//    int textSize = text.length;
// 
//    int i = 0;
// 
//    while ((i + patternSize) <= textSize) {
//        int j = 0;
//        while (text[i + j] == pattern[j]) {
//            j += 1;
//            if (j >= patternSize)
//                return i;
//        }
//        i += 1;
//    }
//    return -1;
//    }
    
    
    public int search(String txt, String pat) 
    { 
        int M = pat.length(); 
        int N = txt.length(); 
        int p=0;
        /* A loop to slide pat one by one */
        for (int i = 0; i <= N - M; i++) { 
  
            int j; 
  
            /* For current index i, check for pattern  
              match */
            for (j = 0; j < M; j++) 
                if (txt.charAt(i + j) != pat.charAt(j)) 
                    break; 
  
            if (j == M){ // if pat[0...M-1] = txt[i, i+1, ...i+M-1] 
                System.out.println("Pattern found at index " + i); 
                p++;
            }
            
        } 
        
        return p;
    } 
}
