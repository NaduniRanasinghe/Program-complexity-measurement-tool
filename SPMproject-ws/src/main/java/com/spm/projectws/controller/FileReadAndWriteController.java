package com.spm.projectws.controller;

import com.spm.projectws.model.FileDetails;
import com.spm.projectws.service.CalculateService;
import com.spm.projectws.service.CodeService;
import com.spm.projectws.service.RecursionService;
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
    RecursionService RecursionService;

    
    @RequestMapping(value = "/sendfile", method = RequestMethod.POST)
    public ResponseEntity<Object> getFile(@RequestParam("file") MultipartFile file ,@RequestParam("codename") String codeName){
        
        FileDetails fileDetails = new FileDetails();
        try {
            fileDetails.setFile(file.getBytes());
            
            String sourseCode = new String(fileDetails.getFile());
            codeService.SaveSourceCode(sourseCode , codeName);
            
            //Find CI value
            codeService.CalculateCI(codeName);
            
            //Find Recursion
            int value = RecursionService.findRecursion(codeName);
            
            if(value == 100){
                System.out.println("==============  THERE IS A RECURSION IN THE CODE ============");
            }else if(value == -200){
                System.out.println("==============  THERE IS NO RECURSION IN THE CODE ============");
            }
//            String str = "inusha"; 
//            char[] pattern = str.toCharArray();
//            char[] text = s.toCharArray();
//            
//            CalculateService calculateService = new CalculateService();
//            
//            int result = calculateService.simpleTextSearch(pattern, text);

                    // calculate algoritham, number of matches strings
                    CalculateService calculateService = new CalculateService();
                    String str = "inusha"; 
                    int result = calculateService.search(sourseCode, str);

            
            System.out.println("TTTTTTTTTTTTTTTTTTTTTTTTTT: " + result);

        System.out.println(fileDetails.getFile());
        
        return new ResponseEntity<>(fileDetails, HttpStatus.OK);
        } catch (IOException ex) {
            Logger.getLogger(FileReadAndWriteController.class.getName()).log(Level.SEVERE, null, ex);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        
    }
    
}
