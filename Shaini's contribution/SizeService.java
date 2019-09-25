package com.spm.projectws.service;

import java.util.regex.Matcher;
import com.spm.projectws.util.DefArrayListConstant;
import java.util.Iterator;
import java.util.LinkedList;
import com.spm.projectws.model.CodeFind;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.spm.projectws.model.CodeLine;
import java.util.ArrayList;
import com.spm.projectws.repository.CodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import com.spm.projectws.repository.CodeLineRepository;
import org.springframework.stereotype.Service;

@Service
public class SizeService
{
    @Autowired
    CodeLineRepository codeLineRepository;
    @Autowired
    CodeRepository codeRepository;
    public String inputString;
    public ArrayList<String> tokenList;
    public int totalSizeComplexity;
    
    public SizeService() {
        this.inputString = "";
        this.tokenList = new ArrayList<String>();
        this.totalSizeComplexity = 0;
    }
    
    public LinkedList<CodeLine> calculateCs(final String CodeKeyName) {
        final CodeFind codeFind = this.codeRepository.findCodeKey(CodeKeyName);
        final LinkedList<CodeLine> allCode = (LinkedList<CodeLine>)this.codeLineRepository.getAllSourceCode(codeFind.getCodeNumber());
        LinkedList<CodeLine> ctcValueList = new LinkedList<CodeLine>();
        try {
            for (final CodeLine cl : allCode) {
                this.inputString = cl.getpStatement();
                this.findRefDefComplexity();
                this.findNdttKeywordComplexity();
                this.findArithmeticComplexity();
                this.findRelationalComplexity();
                this.findLogicalComplexity();
                this.findBitwiseComplexity();
                this.findMiscellaneousComplexity();
                this.findAssignmentComplexity();
                this.findKeywordComplexity();
                this.findManipulatorsComplexity();
                this.findQuotesComplexity();
                this.findNamesComplexity();
                this.findNumbersComplexity();
                cl.setCs(totalSizeComplexity);
                ctcValueList.add(cl);
                this.codeLineRepository.updateCS(Integer.valueOf(this.totalSizeComplexity), cl.getId());
                this.totalSizeComplexity = 0;
            }
            return ctcValueList;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
       return ctcValueList; 
    }
    
    public void findRefDefComplexity() {
        try {
            int refdefcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.REFDEREFSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++refdefcount;
                    ++fromIndex;
                    sizeComplexity += 2;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findNdttKeywordComplexity() {
        try {
            int ndttcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.NDTTKEYWORDSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++ndttcount;
                    ++fromIndex;
                    sizeComplexity += 2;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findArithmeticComplexity() {
        try {
            int arithmeticcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.ARITHMETICOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++arithmeticcount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findRelationalComplexity() {
        try {
            int relationalcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.RELATIONALOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++relationalcount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findLogicalComplexity() {
        try {
            int logicalcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.LOGICALOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++logicalcount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findBitwiseComplexity() {
        try {
            int bitwisecount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.BITWISEOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++bitwisecount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findMiscellaneousComplexity() {
        try {
            int miscellaneouscount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.MISCELLANEOUSOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++miscellaneouscount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findAssignmentComplexity() {
        try {
            int assignmentcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.ASSIGNMENTOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++assignmentcount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findKeywordComplexity() {
        try {
            int keywordcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.KEYWORDOPSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++keywordcount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findManipulatorsComplexity() {
        try {
            int manipulatorcount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.MANIPULATORSSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++manipulatorcount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findQuotesComplexity() {
        try {
            Integer quotescount = 0;
            Integer sizeComplexity = 0;
            int fromIndex = 0;
            for (final String value : DefArrayListConstant.QUOTESSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++quotescount;
                    ++fromIndex;
                    sizeComplexity += 0;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findNamesComplexity() {
        try {
            int namescount = 0;
            int fromIndex = 0;
            int sizeComplexity = 0;
            for (final String value : DefArrayListConstant.NAMESSTRING) {
                while ((fromIndex = this.inputString.indexOf(value, fromIndex)) != -1) {
                    ++namescount;
                    ++fromIndex;
                    ++sizeComplexity;
                    this.tokenList.add(value);
                }
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void findNumbersComplexity() {
        try {
            int numberscount = 0;
            int sizeComplexity = 0;
            final Matcher matcher = DefArrayListConstant.NUMBERSPATTERN.matcher(this.inputString);
            while (matcher.find()) {
                ++numberscount;
                ++sizeComplexity;
                this.tokenList.add(matcher.group());
            }
            this.totalSizeComplexity += sizeComplexity;
        }
        catch (Exception ex) {
            Logger.getLogger(SizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}