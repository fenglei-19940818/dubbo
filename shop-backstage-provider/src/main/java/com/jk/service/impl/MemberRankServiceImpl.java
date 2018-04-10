package com.jk.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.jk.dao.MemberRankDao;
import com.jk.model.MemberRank;
import com.jk.service.MemberRankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MemberRankServiceImpl implements MemberRankService {

    @Autowired
    private MemberRankDao memberRankDao;

    //查询
    public JSONObject queryMemberRankListPager() {
        //获取总条数
        long counts = memberRankDao.queryMemberRankTotal();
        //将条件和页码放在Map中
        Map paramMap = new HashMap();
//        paramMap.put("pager", pager);
//        paramMap.put("search", area);
        //查询当前页
        List<MemberRank> data = memberRankDao.queryMemberRankPage(paramMap);
        JSONObject json = new JSONObject();
        //总条数的key值必须叫total
        json.put("total", counts);
        //当前页展示数据的key值必须叫rows
        json.put("rows", data);
        return json;
    }

    //添加
    public Integer addMemberRank(MemberRank memberrank) {
        Integer i = memberRankDao.addMemberRank(memberrank);
        return i;
    }

    //修改前查询
    public MemberRank queryMemberRankById(MemberRank memberrank) {
        memberrank = memberRankDao.queryMemberRankById(memberrank);
        return memberrank;
    }

    //修改
    public Integer updateMemberRank(MemberRank memberrank) {
        Integer i = memberRankDao.updateMemberRank(memberrank);
        return i;
    }

    //删除
    public Integer deleteMemberRank(String ids) {
        Integer i = memberRankDao.deleteMemberRank(ids);
        return i;
    }
}
