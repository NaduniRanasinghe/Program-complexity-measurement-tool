package com.spm.projectws.repository;

import com.spm.projectws.model.CodeFind;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
public interface CodeRepository extends JpaRepository<CodeFind, Integer>{
    
    @Query("SELECT cf FROM CodeFind cf WHERE cf.codeKeyName = :codeKeyName")
    CodeFind findCodeKey(String codeKeyName);
    
}
