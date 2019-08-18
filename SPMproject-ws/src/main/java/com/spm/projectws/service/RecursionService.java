package com.spm.projectws.service;

import com.spm.projectws.model.CodeFind;
import com.spm.projectws.model.CodeLine;
import com.spm.projectws.repository.CodeLineRepository;
import com.spm.projectws.repository.CodeRepository;
import java.util.LinkedList;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author IT17121170     |     Ranasinghe N.K
 */
@Service
public class RecursionService {
    
    @Autowired
    CodeLineRepository codeLineRepository;
    
    @Autowired
    CodeRepository codeRepository;
    
    public int findRecursion(String CodeKeyName){
        
        //find code KeyNumber
        CodeFind codeFind = codeRepository.findCodeKey(CodeKeyName);
        
        //by using CodeKeyNumber get data from CodeLine
        LinkedList<CodeLine> allCode = codeLineRepository.getAllSourceCode(codeFind.getCodeNumber());
        
        //get objects of CodeLine
        for (CodeLine cl : allCode) {
            String fulFunction = null;
            String functionName = null;
            //get number of matching keywords usding algorithm
            CalculateService CalculateService = new CalculateService();
            int extendsNo = CalculateService.search(cl.getpStatement(),"){");
            
            if(extendsNo >= 1){
                String values = cl.getpStatement();
                String[] array = values.split(" ");
                
                for(String value : array){
                    int v1 = CalculateService.search(value,"(");
                    int v2 = CalculateService.search(value,")");
                    
                    if(v1 == 1  && v2 == 1){
                        fulFunction = value;
                        
                        String[] s = fulFunction.split(Pattern.quote("("));
                        for(String f1 : s){
                            functionName = f1;
                            
                            for (CodeLine c2 : allCode) {
                                int availableNo = CalculateService.search(c2.getpStatement(),functionName);  
                                
                                if(availableNo == 1){
                                    int availableSemiColon = CalculateService.search(c2.getpStatement(),");"); 
                                    if(availableSemiColon == 1){
                                        return 100;
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }
        
        return -200;
        
    }
    
}
