package org.egov.works.models;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/**
 * Stores if the register is active or not. Inactive registers can be archieved later.
 */
public enum Status {
    DRAFT("DRAFT"),
    
    INWORKFLOW("INWORKFLOW"),

    ACTIVE("ACTIVE"),

    INACTIVE("INACTIVE"),

    CANCELLED ("CANCELLED"),

    REJECTED ("REJECTED");

    private final String value;

    Status(String value) {
        this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
        return String.valueOf(value);
    }

    @JsonCreator
    public static Status fromValue(String text) {
        for (Status b : Status.values()) {
            if (String.valueOf(b.value).equals(text)) {
                return b;
            }
        }
        return null;
    }
}

