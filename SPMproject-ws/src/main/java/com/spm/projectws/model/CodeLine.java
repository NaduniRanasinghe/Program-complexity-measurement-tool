package com.spm.projectws.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
@Entity
@Table(name = "sourcecodes")
public class CodeLine {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    
    @Column(name = "CODENUMBER")
    private String codeNumber;
        
    @Column(name = "LINENUMBER")
    private Integer lineNumber;

    @Column(name = "PSTATEMENT")
    private String pStatement;
    
    @Column(name = "FACTORS")
    private String factors;

    @Column(name = "CS")
    private Integer cs;
   
    @Column(name = "CNC")
    private Integer cnc;
       
    @Column(name = "CI")
    private Integer ci;
           
    @Column(name = "CTC")
    private Integer ctc;
    
    @Column(name = "TW")
    private Integer tw;
        
    @Column(name = "CPS")
    private Integer cps;
            
    @Column(name = "CR")
    private Integer cr;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCodeNumber() {
        return codeNumber;
    }

    public void setCodeNumber(String codeNumber) {
        this.codeNumber = codeNumber;
    }

    public Integer getLineNumber() {
        return lineNumber;
    }

    public void setLineNumber(Integer lineNumber) {
        this.lineNumber = lineNumber;
    }

    public String getpStatement() {
        return pStatement;
    }

    public void setpStatement(String pStatement) {
        this.pStatement = pStatement;
    }

    public String getFactors() {
        return factors;
    }

    public void setFactors(String factors) {
        this.factors = factors;
    }

    public Integer getCs() {
        return cs;
    }

    public void setCs(Integer cs) {
        this.cs = cs;
    }

    public Integer getCnc() {
        return cnc;
    }

    public void setCnc(Integer cnc) {
        this.cnc = cnc;
    }

    public Integer getCi() {
        return ci;
    }

    public void setCi(Integer ci) {
        this.ci = ci;
    }

    public Integer getCtc() {
        return ctc;
    }

    public void setCtc(Integer ctc) {
        this.ctc = ctc;
    }

    public Integer getTw() {
        return tw;
    }

    public void setTw(Integer tw) {
        this.tw = tw;
    }

    public Integer getCps() {
        return cps;
    }

    public void setCps(Integer cps) {
        this.cps = cps;
    }

    public Integer getCr() {
        return cr;
    }

    public void setCr(Integer cr) {
        this.cr = cr;
    }
}
