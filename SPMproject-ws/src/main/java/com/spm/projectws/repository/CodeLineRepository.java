package com.spm.projectws.repository;

import com.spm.projectws.model.CodeLine;
import java.util.LinkedList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author IT17119122   |   Liyange I.M
 */
public interface CodeLineRepository extends JpaRepository<CodeLine, Integer>{
    
    @Query(value="SELECT * FROM sourcecodes WHERE CODENUMBER = :codeNumber",nativeQuery=true)
    LinkedList<CodeLine> getAllSourceCode(String codeNumber);
    
    @Query(value="SELECT * FROM sourcecodes WHERE CODENUMBER = :codeNumber",nativeQuery=true)
    List<CodeLine> getAllSourceCodebyList(String codeNumber);
    
    @Query(value="SELECT * FROM sourcecodes WHERE ID = ?1 AND CODENUMBER = ?2",nativeQuery=true)
    CodeLine getARecord(Integer id , String keyNumber);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.ci = :ci WHERE cl.id  = :id")
    void updateCI(Integer ci,Integer id);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.cs = :cs WHERE cl.id  = :id")
    void updateCS(Integer cs,Integer id);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.cnc = :cnc WHERE cl.id  = :id")
    void updateCnc(Integer cnc,Integer id);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.ctc = :ctc WHERE cl.id  = :id")
    void updateCtc(Integer ctc,Integer id);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.tw = :tw WHERE cl.id  = :id")
    void updateTw(Integer tw,Integer id);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.cps = :cps WHERE cl.id  = :id")
    void updateCps(Integer cps,Integer id);
    
    @Transactional
    @Modifying
    @Query("UPDATE CodeLine cl SET cl.cr = :cr WHERE cl.id  = :id")
    void updateCr(Integer cr,Integer id);
}
