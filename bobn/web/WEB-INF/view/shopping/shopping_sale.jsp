<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopping_sale.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SALE페이지</title>
<link rel="stylesheet" type="text/css" href="./css/shopsale.css">
<link rel="stylesheet" type="text/css" href="./css/reset.css">
<link rel="stylesheet" type="text/css" href="./css/shopcommon.css">
</head>
<body>
     <div class="c_wrap content">
        <div id="c_content">
            <section>
                <article id="c_sale_article0">
                    <p>SALE상품</p>
                </article>
                <article id="c_sale_article1">
                    <div class="c_sale_concept_btn_wrap">
                        <button type="button" class="c_sale_country_btn" onclick="location.href='어디로이동할지적어야함';" id="c_sale_kr">한식</button>
                        <button type="button" class="c_sale_country_btn" onclick="location.href='어디로이동할지적어야함';">양식</button>
                        <button type="button" class="c_sale_country_btn" onclick="location.href='어디로이동할지적어야함';">중식</button>
                        <button type="button" class="c_sale_country_btn" onclick="location.href='어디로이동할지적어야함';">일식</button>
                        <button type="button" class="c_sale_country_btn" onclick="location.href='어디로이동할지적어야함';">동남아</button>
                        <button type="button" class="c_sale_country_btn" onclick="location.href='어디로이동할지적어야함';">기타</button>
                    </div>
                </article>
                <!-- <select name="job">
                    <option value="">직업선택</option>
                    <option value="학생">학생</option>
                    <option value="회사원">회사원</option>
                    <option value="기타">기타</option>
                </select> -->
                <ul class="c_sale_menu">
                    <li>
                      <a href="#" id="c_sale_select1">추천순 &#9660;</a>
                      <ul class="c_depth_1">
                        <li><a href="#">가격순</a></li>
                        <li><a href="#">판매순</a></li>
                        <li><a href="#">추천순</a></li>
                      </ul>
                    </li>
                </ul>
                <article id="c_sale_article2">
                    <table>
                        <tr>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_text">소고기 미역국 / &#8361;5,000</td>
                            <td class="c_sale_article2_text">순두부찌개 / &#8361;5,000</td>
                            <td class="c_sale_article2_text">장어구이 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_text">새벽배송가능</td>
                            <td class="c_sale_article2_text">일반배송 / 품절되었습니다.</td>
                            <td class="c_sale_article2_text">새벽배송가능 / 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_text">스테이크 / &#8361;20,000</td>
                            <td class="c_sale_article2_text">순두부찌개 / &#8361;5,000</td>
                            <td class="c_sale_article2_text">장어구이 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_text">새벽배송가능 / 품절되었습니다.</td>
                            <td class="c_sale_article2_text">일반배송</td>
                            <td class="c_sale_article2_text">새벽배송가능 / 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                            <td class="c_sale_article2_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';">
                            </td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_text">소고기 미역국 / &#8361;5,000</td>
                            <td class="c_sale_article2_text">순두부찌개 / &#8361;5,000</td>
                            <td class="c_sale_article2_text">장어구이 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_sale_article2_text">새벽배송가능</td>
                            <td class="c_sale_article2_text">일반배송 / 품절되었습니다.</td>
                            <td class="c_sale_article2_text">새벽배송가능 / 품절되었습니다.</td>
                        </tr>
                    </table>
                </article>
                <article id="c_sale_article3">
                    <div class="c_sale_pagination">
                        <a href="#">&laquo;</a>
                        <a href="#" class="c_sale_active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">&raquo;</a>
                    </div>
                </article>
            </section>
        </div>
    </div>
</body>
</body>
</body>
</html>