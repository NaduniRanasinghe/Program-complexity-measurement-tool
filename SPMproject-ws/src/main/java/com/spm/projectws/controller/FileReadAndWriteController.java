package com.spm.projectws.controller;

import com.spm.projectws.model.FileDetails;
import com.spm.projectws.service.CalculateCncAndCtcService;
import com.spm.projectws.service.CalculateTwAndCps;
import com.spm.projectws.service.CodeService;
import com.spm.projectws.service.RecursionService;
import com.spm.projectws.service.SizeService;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
@RestController
@CrossOrigin
public class FileReadAndWriteController {
    
    @Autowired
    CodeService codeService;
    
    @Autowired
    RecursionService recursionService;
    
    @Autowired
    SizeService sizeService;
    
    @Autowired
    CalculateCncAndCtcService calculateCncAndCtcService;
    
    @Autowired
    CalculateTwAndCps calculateTwAndCps;

    
    @RequestMapping(value = "/sendfile", method = RequestMethod.POST)
    public ResponseEntity<Object> getFile(@RequestParam("file") MultipartFile file ,@RequestParam("codename") String codeName){
        
        FileDetails fileDetails = new FileDetails();
        try {
            fileDetails.setFile(file.getBytes());
            String sourseCode = new String(fileDetails.getFile());
            //save code line by line in to the table
            codeService.SaveSourceCode(sourseCode , codeName);
            
            //Find Cnc value
            calculateCncAndCtcService.calculateCnc(codeName);
            //Find Ctc value        
            calculateCncAndCtcService.calculateCtc(codeName);
            //Find CI value
            codeService.CalculateCI(codeName);
            //Find size
            sizeService.calculateCs(codeName);
            //calculate TW 
            calculateTwAndCps.calculateTw(codeName);
            //calculate CPS
            calculateTwAndCps.calculateCps(codeName);
            //Find Recursion(Cr)
            int value = recursionService.findRecursion(codeName);
            
            if(value == 100){

                //Save recursion
                recursionService.saveCr(codeName);
                System.out.println("==============  THERE IS A RECURSION IN THE CODE ============");
            }else if(value == -200){
                System.out.println("==============  THERE IS NO RECURSION IN THE CODE ============");
            }
        
        return new ResponseEntity<>(fileDetails, HttpStatus.OK);
        } catch (IOException ex) {
            Logger.getLogger(FileReadAndWriteController.class.getName()).log(Level.SEVERE, null, ex);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        
    }
    
}
