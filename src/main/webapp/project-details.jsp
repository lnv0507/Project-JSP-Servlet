<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-md-8 project-images">
        <img src="images/portfolio/NO1.jpg" alt="" class="img-responsive"/>
        <img src="images/portfolio/NO1-2.jpg" alt="" class="img-responsive"/>
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
                Với lối thiết kế trung thành với tone chủ đạo vẫn là màu trắng kết hợp với màu hồng nhạt được xem là sự
                kết hợp kinh điển trong thiết kế nội thất. Sắc hồng là màu sắc tạo sự nhẹ nhàng và màu trắng là màu
                trung gian, căn phòng sẽ trở nên đầy tính nghệ thuật và êm ái nhưng không kém phần quyến rũ tác động
                mạnh mẽ vào thị giác, tạo nên dự hấp dẫn riêng cho căn hộ.
                </p>
                <h4>Các sản phẩm :</h4>
                <ul class="products-design">
                    <c:forEach items="${product}" var="key">
                    <li><a href="ProductDetailController?id=${key.getIdProduct()}">${key.getTenProduct()}</a></li>
                    Số lượng :
                    </c:forEach>
                </ul>
                </p>

            </div>
            </c:forEach>
        </div>

    </div>
</div>
</div>
