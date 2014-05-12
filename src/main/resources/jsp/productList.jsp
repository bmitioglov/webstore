<%@ page contentType="text/html;charset=utf-8" %>
<HTML>
<HEAD>
    <TITLE>Price list</TITLE>
    <script type="text/javascript">
        function filter (phrase, _id){
            var words = phrase.value.toLowerCase().split(" ");
            var table = document.getElementById(_id);
            var ele;
            for (var r = 1; r < table.rows.length; r++){
                ele = table.rows[r].innerHTML.replace(/<[^>]+>/g,"");
                var displayStyle = 'none';
                for (var i = 0; i < words.length; i++) {
                    if (ele.toLowerCase().indexOf(words[i])>=0)
                        displayStyle = '';
                    else {
                        displayStyle = 'none';
                        break;
                    }
                }
                table.rows[r].style.display = displayStyle;
            }
        }
    </script>
    <jsp:useBean id="bucket" class="com.javaweb.BucketBean" scope="session"/>
</HEAD>
<BODY>
    Введите параметр фильтра
    <input name="filt" onkeyup="filter(this, 'tab1')" style="width:350px;" type="text" /><br />
    <TABLE id="tab1" border datasrc="#booksprice">
        <THEAD>
        <TR style="font:x-small; font-weight:bold" bgcolor="yellow"
            align="center">
            <TD><DIV id=Author onClick="sortauthor()">Aвтор</DIV></TD>
            <td><DIV id=title>Title</DIV></TD>
            <TD><DIV id=Year>Год издания</DIV></ТD>
            <TD><DIV id=Price>Цена</DIV></ТD>
            <td>Тип</td>
            <td>Карточка товара</td>
            <td>В корзину</td>
        </TR>
        </THEAD>
        <TBODY>
            <form name="1" method="post" action="updateBucket.jsp">
                <%@include file="productListValues/value001.jsp"%>
            </form>

            <form name="1" method="post" action="updateBucket.jsp">
                <%@include file="productListValues/value002.jsp"%>
            </form>

            <form name="1" method="post" action="updateBucket.jsp">
                <%@include file="productListValues/value003.jsp"%>
            </form>

        </TBODY>
    </TABLE>
    <br>
    <a href="#">Корзина (<jsp:getProperty name="bucket" property="amount"/>)</a>
</BODY>
</HTML>