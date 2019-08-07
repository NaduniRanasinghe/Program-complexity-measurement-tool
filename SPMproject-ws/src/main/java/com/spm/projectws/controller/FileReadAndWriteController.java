package com.spm.projectws.controller;

import com.spm.projectws.model.FileDetails;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author IT17119122
 */
@RestController
@CrossOrigin
public class FileReadAndWriteController {
    

    @RequestMapping(value = "/sendfile", method = RequestMethod.POST)
    public ResponseEntity<Object> getFile(@RequestParam("file") MultipartFile file){
        

        FileDetails fileDetails = new FileDetails();
        try {
            fileDetails.setFile(file.getBytes());
            
            String s = new String(fileDetails.getFile());
            System.out.println("TTTTTTTTTTTTTTTTTTTTTTTTTT: " + s);

        System.out.println(fileDetails.getFile());
        
        return new ResponseEntity<>(fileDetails, HttpStatus.OK);
        } catch (IOException ex) {
            Logger.getLogger(FileReadAndWriteController.class.getName()).log(Level.SEVERE, null, ex);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        
    }
    
}
