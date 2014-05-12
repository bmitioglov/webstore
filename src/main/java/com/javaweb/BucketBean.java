package com.javaweb;

import java.io.Serializable;

public class BucketBean implements Serializable {
    private String bucketList;
    private int amount;

    public BucketBean(){
        setBucketList(" ");
        amount = 0;
    }

    public String getBucketList() {
        return bucketList;
    }

    public void setBucketList(String bucketList) {
        this.bucketList = bucketList;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
