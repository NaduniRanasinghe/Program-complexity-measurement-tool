/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spm.projectws.service;

import com.spm.projectws.model.CodeFind;
import com.spm.projectws.model.CodeLine;
import com.spm.projectws.repository.CodeLineRepository;
import com.spm.projectws.repository.CodeRepository;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
@Service
public class CodeService {
    
    @Autowired
    CodeLineRepository codeLineRepository;
    
    @Autowired
    CodeRepository codeRepository;
    
    public void SaveSourceCode(String sourceCode, String codeName){
        
        //Split the code line by line
        String[] arrOfStr = sourceCode.split("          "); 
                    
        //get uniq id
        String uniqueKey = UUID.randomUUID().toString();    
  
        Integer lineNumber = 1;
        for (String statement : arrOfStr) {
            CodeLine codeLine = new CodeLine();
                        
            codeLine.setpStatement(statement);
            codeLine.setCodeNumber(uniqueKey);
            codeLine.setLineNumber(lineNumber);
                        
            System.out.println(statement); 
            codeLineRepository.save(codeLine);
            lineNumber++;
        }
        CodeFind codeFind = new CodeFind();
        codeFind.setCodeKeyName(codeName);
        codeFind.setCodeNumber(uniqueKey);
        codeRepository.save(codeFind);
    }
    
}
