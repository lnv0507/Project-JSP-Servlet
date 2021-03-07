<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-md-8 project-images">
        <c:forEach items="${images}" var="image">
        <img src="images/design/${image}" alt="" class="img-responsive" />
        </c:forEach>
    </div>
    <div class="col-md-4">
        <div class="project-info">

            <h2>Thiết kế</h2>
            <c:forEach items="${design}" var="des">
            <div class="details">
                <div class="info-text">
                    <span class="title">Mã thiết kế</span>
                    <span class="val">${des.idDes}</span>
                </div>

                <div class="info-text">

                    <span class="title">Loại thiết kế</span>
                    <c:forEach items="${type}" var="type">
                    <span class="val">${type}</span>
                    </c:forEach>
                </div>


                <p></p>
                <p>
                <h4>Mô tả</h4>
                ${des.getMota()}
                </p>
                <h4>Các sản phẩm :</h4>
                <ul class="products-design">
                    <c:forEach items="${products}" var="key">
                    <li><a href="ProductDetailController?id=${key.getProductDTO().getIdProduct()}">${key.getProductDTO().getTenProduct()}</a></li>
                    Số lượng : ${key.getNum()}
                    </c:forEach>
                </ul>
                </p>

            </div>
            </c:forEach>
        </div>

    </div>
</div>
</div>
