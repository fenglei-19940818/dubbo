package com.jk.dao;

import com.jk.model.MemberAttribute;
import com.jk.model.MemberAttributeOption;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface MemberAttributeDao {

    long queryMemberAttributeTotal();

    List<MemberAttribute> queryMemberAttributePage(Map paramMap);

    Integer queryAttributeID();

    Integer addMemberAttribute(MemberAttribute memberAttribute);

    Integer addMemberAttribute1(MemberAttribute memberAttribute);

    void addAttributeOptions(@Param("attid") Integer attid, @Param("option") String option);

    MemberAttribute queryMemberAttributeByid(MemberAttribute memberAttribute);

    List<MemberAttributeOption> queryOptionsByProIndex(Integer property_index);

    void deleteAllOptionsByProIndex(Integer property_index);

    Integer updateMemberAttribute(MemberAttribute memberAttribute);

    Integer deleteMemberAttribute(@Param("ids")String ids);

    List<MemberAttribute> queryMemberAttributeByids(@Param("ids")String ids);

    void deleteOptionsByProIndexs(@Param("indexs") String indexs);
}
