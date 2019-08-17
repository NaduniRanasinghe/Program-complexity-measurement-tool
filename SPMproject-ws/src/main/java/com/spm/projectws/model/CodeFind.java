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
@Table(name = "maincode")
public class CodeFind {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    
    @Column(name = "CODENUMBER")
    private String codeNumber;
        
    @Column(name = "CODEKEYNAME")
    private String codeKeyName;

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

    public String getCodeKeyName() {
        return codeKeyName;
    }

    public void setCodeKeyName(String codeKeyName) {
        this.codeKeyName = codeKeyName;
    }
}
