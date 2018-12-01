package com.flowers.common;

import java.util.HashMap;
import java.util.Map;

public class TypeMap {
    public Map<String, String> map = new HashMap<>();
    public TypeMap() {
        map.put("1", "season");
        map.put("2", "color");
        map.put("3", "country");
        map.put("4", "festival");
        map.put("5", "world");
    }
}
