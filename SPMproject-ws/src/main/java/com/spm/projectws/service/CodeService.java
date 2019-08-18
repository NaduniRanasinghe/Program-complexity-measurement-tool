package com.spm.projectws.service;

import com.spm.projectws.model.CodeFind;
import com.spm.projectws.model.CodeLine;
import com.spm.projectws.repository.CodeLineRepository;
import com.spm.projectws.repository.CodeRepository;
import java.util.LinkedList;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.regex.*;

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
        Pattern ptn = Pattern.compile("\\r?\\n");
        String[] arrOfStr = ptn.split(sourceCode);
//         System.out.println(Pattern.matches("[public|protected|private|static|]", sourceCode));
        //get uniq id
        String uniqueKey = UUID.randomUUID().toString();    
  
        Integer lineNumber = 1;
        for (String statement : arrOfStr) {
            if(!statement.equals("") && !statement.equals(" ")){
                CodeLine codeLine = new CodeLine();
                        
                codeLine.setpStatement(statement);
                codeLine.setCodeNumber(uniqueKey);
                codeLine.setLineNumber(lineNumber);
                codeLine.setCi(0);
                codeLine.setCnc(0);
                codeLine.setCps(0);
                codeLine.setCr(0);
                codeLine.setCs(0);
                codeLine.setCtc(0);
                codeLine.setTw(0);

                System.out.println(statement); 
                codeLineRepository.save(codeLine);
                lineNumber++;
            }

        }
        CodeFind codeFind = new CodeFind();
        codeFind.setCodeKeyName(codeName);
        codeFind.setCodeNumber(uniqueKey);
        codeRepository.save(codeFind);
    }
    
    public void CalculateCI(String CodeKeyName){
        
        //find code KeyNumber
        CodeFind codeFind = codeRepository.findCodeKey(CodeKeyName);
        
        //using CodeKeyNumber get data from CodeLine
        LinkedList<CodeLine> allCode = codeLineRepository.getAllSourceCode(codeFind.getCodeNumber());
        
        StringBuilder sb1 = new StringBuilder();

        //get objects of CodeLine
        for (CodeLine cl : allCode) {
            //CodeLine append to gether
            sb1.append(cl.getpStatement());
        }
        //assing sourceCodes in to string variable
        String sourceCode = sb1.toString();
        
        //get number of matching keywords usding algorithm
        CalculateService CalculateService = new CalculateService();
        int extendsNo = CalculateService.search(sourceCode," extends ");
        
        int implementsNo = 0;
        
        //get objects of CodeLine
        for (CodeLine cl : allCode) {
            //CodeLine append to gether
            sb1.append(cl.getpStatement());
            
            int implementsNoLine = CalculateService.search(cl.getpStatement()," implements ");
            implementsNo = implementsNo + implementsNoLine;
            
            if(implementsNoLine >= 1){
                int commaNo = CalculateService.search(cl.getpStatement(),",");
                implementsNo = implementsNo + commaNo;
            }
        }

        //save CCI in all the code lines
        for (CodeLine cl : allCode) {
                updateCI(extendsNo + implementsNo ,cl.getId());
        }
    }
    
    public void updateCI(Integer CI,Integer id){
        codeLineRepository.updateCI(CI,id);
    }
    
 
    
}
