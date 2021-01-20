package com.dtos;

import java.util.List;

public class CardDTO {
    private int quantity;
    private List<ProductDTO> list;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public List<ProductDTO> getList() {
        return list;
    }

    public void setList(List<ProductDTO> list) {
        this.list = list;
    }

    public CardDTO(int quantity, List<ProductDTO> list) {
        this.quantity = quantity;
        this.list = list;
    }

    public CardDTO() {
    }
}
