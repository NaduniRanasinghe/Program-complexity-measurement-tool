package com.spm.projectws.repository;

import com.spm.projectws.model.CodeLine;
import java.util.LinkedList;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
public interface CodeLineRepository extends JpaRepository<CodeLine, Integer>{
    
    @Query("SELECT cl FROM CodeLine cl WHERE cl.codeNumber = :codeNumber")
    LinkedList<CodeLine> getAllSourceCode(String codeNumber);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.ci = :ci WHERE cl.id  = :id")
    void updateCI(Integer ci,Integer id);
}
