package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.MemberRank;
import com.jk.service.MemberRankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/memberRank")
public class MemberRankController {

    @Autowired
    private MemberRankService meberRankService;

    //查询列表
    @RequestMapping("/queryMemberRankListPager")
    @ResponseBody
    public Object queryMemberRankListPager(){
        JSONObject json = meberRankService.queryMemberRankListPager();
        return json;
    }

    //添加
    @RequestMapping("/addMemberRank")
    @ResponseBody
    public Object addMemberRank(MemberRank memberrank){
        Integer i = meberRankService.addMemberRank(memberrank);
        return i;
    }

    //修改前查询回显
    @RequestMapping("/queryMemberRankById")
    @ResponseBody
    public Object queryMemberRankById(MemberRank memberrank){
        memberrank = meberRankService.queryMemberRankById(memberrank);
        return memberrank;
    }

    //修改
    @RequestMapping("/updateMemberRank")
    @ResponseBody
    public Object updateMemberRank(MemberRank memberrank){
        Integer i = meberRankService.updateMemberRank(memberrank);
        return i;
    }

    //删除
    @RequestMapping("/deleteMemberRank")
    @ResponseBody
    public Object deleteMemberRank(String ids){
        Integer i = meberRankService.deleteMemberRank(ids);
        return i;
    }

}
