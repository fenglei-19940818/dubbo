package com.jk.dao;

import com.jk.model.MemberRank;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface MemberRankDao {
    long queryMemberRankTotal();

    List<MemberRank> queryMemberRankPage(Map paramMap);

    Integer addMemberRank(MemberRank memberrank);

    MemberRank queryMemberRankById(MemberRank memberrank);

    Integer updateMemberRank(MemberRank memberrank);

    Integer deleteMemberRank(@Param("ids") String ids);
}
