package com.spm.projectws.service;

import com.spm.projectws.model.CodeFind;
import com.spm.projectws.model.CodeLine;
import com.spm.projectws.repository.CodeLineRepository;
import com.spm.projectws.repository.CodeRepository;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
@Service
public class CalculateTwAndCps {
    
    @Autowired
    CodeLineRepository codeLineRepository;
    
    @Autowired
    CodeRepository codeRepository;
    
    public void calculateTw(String CodeKeyName){
        
        //find code KeyNumber
        CodeFind codeFind = codeRepository.findCodeKey(CodeKeyName);
        
        //using CodeKeyNumber get data from CodeLine
//        LinkedList<CodeLine> codeList = codeLineRepository.getAllSourceCode(codeFind.getCodeNumber());
        List<CodeLine> codeList = codeLineRepository.getAllSourceCodebyList(codeFind.getCodeNumber());

        try{
            int TW = 0,ctc = 0,cnc = 0,ci = 0;
            //get objects of CodeLine
            for (CodeLine cl : codeList) {
                Optional<CodeLine> codeLineObj = codeLineRepository.findById(135);
                CodeLine obj = codeLineObj.get();
                CodeLine obj2 = codeLineRepository.getARecord(cl.getId() , cl.getCodeNumber());
                
                ctc = obj.getCtc();
                cnc = obj.getCnc();
                ci = obj.getCi();
                
                TW = ctc + cnc + ci;
                codeLineRepository.updateTw(TW, obj.getId());
                TW = 0;
                ctc=0;
                cnc=0;
                ci=0;
            }
        } catch(Exception ex){
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void calculateCps(String CodeKeyName){
        //find code KeyNumber
        CodeFind codeFind = codeRepository.findCodeKey(CodeKeyName);
        
        //using CodeKeyNumber get data from CodeLine
        LinkedList<CodeLine> allCode = codeLineRepository.getAllSourceCode(codeFind.getCodeNumber());
        
        try{
            int Cps = 0 ,cs = 0 ,tw = 0;
            //get objects of CodeLine
            for (CodeLine cl : allCode) {
                cs = cl.getCs();
                tw = cl.getTw();
                Cps = cs * tw;
                codeLineRepository.updateCps(Cps, cl.getId());
                Cps = 0;
                cs = 0;
                tw = 0;
            }
        } catch(Exception ex){
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
