package com.spm.projectws.controller;

import com.spm.projectws.model.CommonResponse;
import com.spm.projectws.model.LoginRequest;
import com.spm.projectws.model.LoginResponse;
import com.spm.projectws.model.SystemUser;
import com.spm.projectws.service.SystemUserServiceImpl;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


/**
*
* @author (IT17119122 ** Liyanage I.M)
*/
@RestController
@CrossOrigin
public class UserController {

    @Autowired
    SystemUserServiceImpl systemUserServiceImpl;
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity<LoginResponse> login(@RequestBody LoginRequest loginRequest) {
        
        try{
        
            Object systemUser = systemUserServiceImpl.findByUsernameandPassword(loginRequest.getUsername(),loginRequest.getPassword());
        
            if(systemUser == null) {
                LoginResponse loginResponse = new LoginResponse();
                
                loginResponse.setResponseCode("LOGIN_FAILED’");
                loginResponse.setResponseMessage("Login failed");
                return new ResponseEntity<>(loginResponse, HttpStatus.OK);        
            }
        
            LoginResponse loginResponse = new LoginResponse();
            
            loginResponse.setResponseCode("LOGIN_SUCCESS");
            loginResponse.setResponseMessage("Successfully logged in");
            loginResponse.setSystemUser(systemUser);
            return new ResponseEntity<>(loginResponse, HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
    @RequestMapping(value = "/save/systemuser", method = RequestMethod.POST)
    public ResponseEntity<CommonResponse> saveSystemUser(@Valid @RequestBody SystemUser systemUser) {
        try {
            systemUserServiceImpl.saveUser(systemUser);
            return new ResponseEntity<>(new CommonResponse("SUCSESS", "Item successfully saved"), HttpStatus.OK);
        } catch (Exception ex) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
