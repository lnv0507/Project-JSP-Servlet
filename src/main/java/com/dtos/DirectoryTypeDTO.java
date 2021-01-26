package com.dtos;

public class DirectoryTypeDTO {
    String id;
    String type;
public DirectoryTypeDTO(){

}

    public DirectoryTypeDTO(String id, String type) {
        this.id = id;
        this.type = type;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "DirectoryTypeDTO{" +
                "id='" + id + '\'' +
                ", type='" + type + '\'' +
                '}';
    }

    public void setType(String type) {
        this.type = type;
    }
}
