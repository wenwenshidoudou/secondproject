package com.bsoft.util;

import org.apache.commons.lang3.StringUtils;

public class S extends StringUtils {

    public static String obj2String(Object o) {
        return o == null ? null : String.valueOf(o);
    }

}
