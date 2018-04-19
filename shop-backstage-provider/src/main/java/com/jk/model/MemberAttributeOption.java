package com.jk.model;

public class MemberAttributeOption {
    private Integer member_attribute;
    private String options;

    @Override
    public String toString() {
        return "MemberAttributeOption{" +
                "member_attribute=" + member_attribute +
                ", options='" + options + '\'' +
                '}';
    }

    public Integer getMember_attribute() {
        return member_attribute;
    }

    public void setMember_attribute(Integer member_attribute) {
        this.member_attribute = member_attribute;
    }

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }
}
