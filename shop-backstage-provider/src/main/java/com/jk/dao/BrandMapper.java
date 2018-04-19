package com.jk.dao;

import com.jk.model.Brand;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface BrandMapper {
    int deleteByPrimaryKey(BigDecimal id);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(BigDecimal id);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKeyWithBLOBs(Brand record);

    int updateByPrimaryKey(Brand record);

    List<Brand> selectBrandList(@Param("brand") Brand brand);

    Long selectBrandCount(@Param("brand") Brand brand);

    List<Brand> selectBrandPage(@Param("brand") Brand brand, @Param("startPos") Integer startPos, @Param("endPos") Integer endPos);

    Integer deleteBrandByPrimaryKeys(List<String> idList);
}