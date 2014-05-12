package com.javaweb;

import java.util.HashMap;
import java.util.Map;

public class TableGenerator {
    private static Map<String, String> bucketInfos;


    public static String tableGenerator(String ids) {
        bucketInfos = new HashMap<>();
        fillInfoMap();
        String tableResult = "<TABLE id=\"tab1\" border>\n" +
                "        <THEAD>\n" +
                "        <TR style=\"font:x-small; font-weight:bold\" bgcolor=\"yellow\"\n" +
                "            align=\"center\">\n" +
                "            <TD><DIV id=Author>Aвтор</DIV></TD>\n" +
                "            <td><DIV id=title>Title</DIV></TD>\n" +
                "            <TD><DIV id=Year>Год издания</DIV></ТD>\n" +
                "            <TD><DIV id=Price>Цена</DIV></ТD>\n" +
                "        </TR>\n" +
                "        </THEAD>\n" +
                "        <TBODY>";

        String[] idsArray = ids.split(";");
        for (String id: idsArray) {
            if (id.trim()!=null && !id.trim().isEmpty()) {
                String idInfo = bucketInfos.get(id);
                tableResult = tableResult + idInfo;
            }
        }
        tableResult+="</TBODY>\n" +
                "    </TABLE>";
        return tableResult;
    }

    private static void fillInfoMap() {
        bucketInfos.put("001",
                "<TR>\n"+
                "<td><DIV datafld=\"Author\">Айвазовский</DIV></td>\n" +
                "<TD><DIV datafld=\"title\">Бриг Меркурий</DIV></ТD>\n" +
                "<TD><DIV datafld=\"Year\">1832</DIV></ТD>\n" +
                "<TD><DIV datafld=\"Price\">500000</DIV></ТD>\n" +
                "</TR>");
        bucketInfos.put("002",
                "<TR>\n"+
                "<td><DIV datafld=\"Author\">Репин</DIV></td>\n" +
                "    <TD><DIV datafld=\"title\">Дом родителей в Чугуеве</DIV></ТD>\n" +
                "    <TD><DIV datafld=\"Year\">1860</DIV></ТD>\n" +
                "    <TD><DIV datafld=\"Price\">320000</DIV></ТD>\n" +
                        "</TR>");
        bucketInfos.put("003",
                "<TR>\n"+
                "<td><DIV datafld=\"Author\">Шишкин</DIV></td>\n" +
                "    <TD><DIV datafld=\"title\">Лес</DIV></ТD>\n" +
                "    <TD><DIV datafld=\"Year\">1956</DIV></ТD>\n" +
                "    <TD><DIV datafld=\"Price\">450000</DIV></ТD>\n" +
                        "</TR>");

    }
}
