package com.spm.projectws.service;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
public class CalculateService {
    
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
